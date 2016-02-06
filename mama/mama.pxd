cdef extern from "mama/mama.h":

    # Load a new Middleware Bridge
    mama_status mama_loadBridge (mamaBridge *bridge, char *middleware)

    # Load a new Payload Bridge
    mama_status mama_loadPayloadBridge (mamaPayloadBridge *bridge, char *payloadName)

    # Set the default payload
    mama_status mama_setDefaultPayload (char id)

    # MAMA Open
    mama_status mama_open ()

    # MAMA Open with properties
    mama_status mama_openWithProperties (const char *path, const char *filename)

    # Set properties
    mama_status mama_setProperty (const char *name, const char *value)

    mama_status mama_setPropertiesFromFile (const char *path, const char *filename)

    # MAMA Close
    mama_status mama_close ()

    # MAMA Get Version
    const char *mama_getVersion (mamaBridge bridgeImpl)

    # MAMA Start
    mama_status mama_start (mamaBridge bridgeImpl)

    # mama_status mama_startBackgroundEx (mamaBridge bridgeImpl, mamaStopCBEx callback, void* closure)

    # MAMA Stop
    mama_status mama_stop (mamaBridge bridgeImpl)

    # MAMA StopAll
    mama_status mama_stopAll ()

    # Set application name
    mama_status mama_setApplicationName (const char *applicationName)

    # Set application class name
    mama_status mama_setApplicationClassName (const char *className)
