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

    struct mamaMsgFieldImpl_:
        pass

    ctypedef mamaMsgFieldImpl_* mamaMsgField

    struct mamaMsgFieldIteratorImpl_:
        pass

    ctypedef mamaMsgFieldIteratorImpl_* mamaMsgFieldIterator

    struct mamaTransportImpl_:
        pass

    ctypedef mamaTransportImpl_* mamaTransport

    struct mamaSubscriptionImpl_:
        pass

    ctypedef mamaSubscriptionImpl_* mamaSubscription

    struct mamaManagedSubscriptionImpl_:
        pass

    ctypedef mamaManagedSubscriptionImpl_* mamaManagedSubscription

    struct mamaSubscriptionManagerImpl_:
        pass

    ctypedef mamaSubscriptionManagerImpl_* mamaSubscriptionManager

    struct mamaDictionaryImpl_:
        pass

    ctypedef mamaDictionaryImpl_* mamaDictionary

    struct mamaPublisherImpl_:
        pass

    ctypedef mamaPublisherImpl_* mamaPublisher

    struct mamaDQPublisherImpl_:
        pass

    ctypedef mamaDQPublisherImpl_* mamaDQPublisher

    struct mamaDQPublisherManagerImpl_:
        pass

    ctypedef mamaDQPublisherManagerImpl_* mamaDQPublisherManager

    struct mamaInboxImpl_:
        pass

    ctypedef mamaInboxImpl_* mamaInbox;

    struct mamaQueueImpl_:
        pass

    ctypedef mamaQueueImpl_* mamaQueue

    struct mamaDispatcherImpl_:
        pass

    ctypedef mamaDispatcherImpl_* mamaDispatcher

    struct mamaTimerImpl:
        pass

    ctypedef mamaTimerImpl* mamaTimer

    struct mamaFieldDescriptorImpl_:
        pass

    ctypedef mamaFieldDescriptorImpl_* mamaFieldDescriptor

    struct mamaIoImpl:
        pass

    ctypedef mamaIoImpl* mamaIo

    struct mamaSymbolSourceFileImpl_:
        pass

    ctypedef mamaSymbolSourceFileImpl_* mamaSymbolSourceFile

    struct mamaSymbolStoreImpl_:
        pass

    ctypedef mamaSymbolStoreImpl_* mamaSymbolStore

    struct mamaMsgQualImpl_:
        pass

    ctypedef mamaMsgQualImpl_* mamaMsgQual

    struct mamaSourceManagerImpl_:
        pass

    ctypedef mamaSourceManagerImpl_* mamaSourceManager

    struct mamaSourceImpl_:
        pass

    ctypedef mamaSourceImpl_* mamaSource

    struct mamaSymbologyImpl_:
        pass

    ctypedef mamaSymbologyImpl_* mamaSymbology

    struct mamaSymbologyManagerImpl_:
        pass

    ctypedef mamaSymbologyManagerImpl_* mamaSymbologyManager

    struct mamaSourceGroupCbHandleImpl_:
        pass

    ctypedef mamaSourceGroupCbHandleImpl_* mamaSourceGroupCbHandle

    struct mamaConnectionImpl_:
        pass

    ctypedef mamaConnectionImpl_* mamaConnection

    struct mamaServerConnectionImpl_:
        pass

    ctypedef mamaServerConnectionImpl_* mamaServerConnection

    struct mamaConflationManager_:
        pass

    ctypedef mamaConflationManager_* mamaConflationManager

    struct mamaStatsLoggerImpl_:
        pass

    ctypedef mamaStatsLoggerImpl_* mamaStatsLogger

    struct mamaStatImpl_:
        pass

    ctypedef mamaStatImpl_* mamaStat

    struct mamaStatsCollectorImpl_:
        pass

    ctypedef mamaStatsCollectorImpl_* mamaStatsCollector

    struct mamaStatsGeneratorImpl_:
        pass

    ctypedef mamaStatsGeneratorImpl_* mamaStatsGenerator

    struct mamaMsgReplyImpl_:
        pass

    ctypedef mamaMsgReplyImpl_* mamaMsgReply


