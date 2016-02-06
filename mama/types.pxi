cdef extern from "mama/types.h":
    ctypedef int    mama_i8_t
    ctypedef int    mama_u8_t
    ctypedef int    mama_i16_t
    ctypedef int    mama_u16_t
    ctypedef int    mama_i32_t;
    ctypedef int    mama_u32_t;
    ctypedef int    mama_i64_t;
    ctypedef int    mama_u64_t;
    ctypedef int    mama_bool_t;
    ctypedef double mama_f32_t;
    ctypedef double mama_f64_t;
    ctypedef double mama_quantity_t;
    ctypedef int    mama_fid_t;
    ctypedef size_t mama_size_t;
    ctypedef int    mama_seqnum_t;

    struct mamaBridgeImpl_:
        pass

    ctypedef mamaBridgeImpl_* mamaBridge

    struct mamaPayloadBridgeImpl_:
        pass

    ctypedef mamaPayloadBridgeImpl_* mamaPayloadBridge

    struct mamaPluginImpl_:
        pass

    ctypedef mamaPluginImpl_* mamaPlugin

    ctypedef void* mamaPluginInfo

    ctypedef mama_u64_t*  mamaDateTime
    ctypedef void*        mamaTimeZone
    ctypedef void*        mamaPrice

    struct mamaMsgImpl_:
        pass

    ctypedef mamaMsgImpl_* mamaMsg
