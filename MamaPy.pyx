include "mamapython.pxd"

cdef class Mama:
    def __cinit__ (self):
        pass

    def open (self):
        mama_open ()

    def close (self):
        mama_close ()
