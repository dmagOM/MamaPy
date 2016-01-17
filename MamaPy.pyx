cimport mamapython

cdef class Mama:
    def __cinit__ (self):
        pass

    def open (self):
        mamapython.mama_open ()

    def close (self):
        mamapython.mama_close ()
