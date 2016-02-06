include "mama/status.pxi"
include "mama/types.pxi"
include "mama/mama.pxd"
include "mama/queue.pxd"

from os import path

cdef class Mama:

    cdef mamaBridge bridge
    cdef mamaPayloadBridge payloadBridge
    cdef mama_status status

    def __cinit__ (self, middleware, payload=None, open=True):
        print "Loading bridge {0}".format (middleware)
        self.status = mama_loadBridge (&self.bridge, middleware)
        print "Mama Status: {0}".format( mamaStatus_stringForStatus(self.status))

        if payload:
            print "Loading Payload {0}".format (payload)
            self.status = mama_loadPayloadBridge (&self.payloadBridge, payload)
            print "Mama Status: {0}".format( mamaStatus_stringForStatus(self.status))

        if open:
            print "Opening MAMA"
            self.status = self.open()
            print "Mama Status: {0}".format( mamaStatus_stringForStatus(self.status))

    def open (self):
        self.status = mama_open ()
        return self.status

    def close (self):
        self.status = mama_close ()
        return self.status

    def loadMiddlewareBridge (self, middleware):
        self.status = mama_loadBridge (&self.bridge, middleware)
        return self.status

    def loadPayloadBridge (self, payload):
        self.status = mama_loadPayloadBridge (&self.payloadBridge, payload)
        return self.status

    def start (self):
        print "Starting MAMA for bridge: {0}".format (self.middleware)
        self.status = mama_start (self.bridge)
        print "Mama Status: {0}".format( mamaStatus_stringForStatus(self.status))
        return self.status

    def stop (self):
        print "Stopping MAMA for bridge: {0}".format (self.middleware)
        self.status = mama_stop (self.bridge)
        print "Mama Status: {0}".format( mamaStatus_stringForStatus(self.status))
        return self.status

    """ Property Related Methods """
    def setProperty (self, name, value):
        self.status = mama_setProperty(name, value)
        return self.status

    def setPropertiesFromFile (self, file):
        if path.isFile (file):
            pathname, filename = path.split (file)
            self.status = mama_setPropertiesFromFile (pathname, filename)
            return self.status
        else:
            self.status = MAMA_STATUS_INVALID_ARG
            return self.status

    """ Application Name and Class Name """
    def setApplicationName (self, applicationName):
        self.applicationName = applicationName
        mama_setApplicationName (self.applicationName)

    def setClassName (self, className):
        self.className = className
        mama_setApplicationClassName (self.className)

    """ General Purpose Helper Methods """
    def getVersion (self):
        return mama_getVersion (self.bridge)

    def getLastStatus (self):
        return self.status


