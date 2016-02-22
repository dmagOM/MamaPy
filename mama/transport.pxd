cdef extern from "mama/transport.h":
    ctypedef enum mamaTransportEvent:
        MAMA_TRANSPORT_CONNECT,
        MAMA_TRANSPORT_CONNECT_FAILED,
        MAMA_TRANSPORT_RECONNECT,
        MAMA_TRANSPORT_DISCONNECT,
        MAMA_TRANSPORT_ACCEPT,
        MAMA_TRANSPORT_ACCEPT_RECONNECT,
        MAMA_TRANSPORT_PUBLISHER_DISCONNECT,
        MAMA_TRANSPORT_QUALITY,
        MAMA_TRANSPORT_NAMING_SERVICE_CONNECT,
        MAMA_TRANSPORT_NAMING_SERVICE_DISCONNECT,
        MAMA_TRANSPORT_WRITE_QUEUE_HIGH_WATER_MARK,
        MAMA_TRANSPORT_WRITE_QUEUE_LOW_WATER_MARK

    ctypedef enum mamaTransportTopic:
        MAMA_TRANSPORT_TOPIC_SUBSCRIBED,
        MAMA_TRANSPORT_TOPIC_UNSUBSCRIBED

    ctypedef enum tportLbScheme:
        TPORT_LB_SCHEME_STATIC,
        TPORT_LB_SCHEME_API,
        TPORT_LB_SCHEME_LIBRARY

    ctypedef enum mamaThrottleInstance:
        MAMA_THROTTLE_DEFAULT,
        MAMA_THROTTLE_INITIAL,
        MAMA_THROTTLE_RECAP

    ctypedef void (*mamaTransportCB) (mamaTransport tport, mamaTransportEvent event, short cause, const void *platformInfo, void *closure)

    ctypedef void (*mamaTransportTopicCB) (mamaTransport tport, mamaTransportTopicEvent event, const char *topic, const void *platformInfo, void *closure)

    ctypedef void (*mamaTransportLbInitialCB) (int numTransports, int *transportIndex)

    ctypedef void (*mamaTransportLbCB) (int curTransportIndex, int numTransports, const char *source, const char *symbol, int *nextTransportIndex)

    const char *mamaTransportEvent_toString (mamaTransportEvent event)

    mama_status mamaTransport_setTransportCallback (mamaTransport transport, mamaTransportCB callback, void *closure)

    mama_status mamaTransport_setWriteQueueWatermarks (mamaTransport transport, uint32_t highWater, uint32_t lowWater)

    mama_status mamaTransport_setTransportTopicCallback (mamaTransport transport, mamaTransportTopicCB callback, void *closure)

    mama_status mamaTransport_allocate (mamaTransport* result)

    mama_status mamaTransport_create (mamaTransport transport, const char *name, mamaBridge bridgeImpl)

    mama_status mamaTransport_setName (mamaTransport transport, const char *name)

    mama_status mamaTransport_getName (mamaTransport transport, const char **result)

    const char *mamaTransport_getMiddleware (mamaTransport transport)

    mama_status mamaTransport_getOutboundThrottle (mamaTransport transport, mamaThrottleInstance instance, double *result)

    void mamaTransport_disableRefresh (mamaTransport transport, uint8_t diable)

    mama_status mamaTransport_setOutboundThrottle (mamaTransport transport, mamaThrottleInstance instance, double outboundThrottle)


