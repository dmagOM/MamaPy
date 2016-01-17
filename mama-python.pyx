include "status.pxi"

cdef extern from "mama/mama.h":
    struct mamaBridge:
        pass

    struct mamaPayloadBridge:
        pass

    mama_status mama_loadBridge (mamaBridge *bridge, char *middleware)
    mama_status mama_loadPayloadBridge (mamaPayloadBridge *bridge, char *payloadName)
