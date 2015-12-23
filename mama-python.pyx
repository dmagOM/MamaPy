cdef extern from "mama/mamacpp.h" namespace "Wombat":
    cdef cppclass Mama:
        pass    

    cdef extern from "mama/mamacpp.h" namespace "Mama":
        cdef void open "Mama::open"()
        cdef void close "Mama::close"()

cdef class MamaPy:
    def open(self):
        open()
    def close(self):
        close()
