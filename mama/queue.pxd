from libc.stdint cimport uint64_t

cdef extern from "mama/queue.h":
    ctypedef void (*mamaQueueEnqueueCB)(mamaQueue queue, void *closure)
    ctypedef void (*mamaQueueEventCB)(mamaQueue queue, void *closure)

    # Create new MAMA Queue
    mama_status mamaQueue_create (mamaQueue *queue, mamaBridge bridgeImpl)

    # Queue can destroy
    mama_status mamaQueue_canDestroy (mamaQueue queue)

    # Queue Destroy
    mama_status mamaQueue_destroy (mamaQueue queue)

    # Queue Destroy Wait
    mama_status mamaQueue_destroyWait (mamaQueue queue)

    # Queue Destroy Timed Wait
    mama_status mamaQueue_destroyTimedWait (mamaQueue queue, long timeout)

    mama_status mamaQueue_setHighWatermark (mamaQueue queue, size_t highWatermark)

    mama_status mamaQueue_getHighWatermark (mamaQueue queue, size_t* highWatermark)

    mama_status mamaQueue_setLowWatermark (mamaQueue queue, size_t lowWatermark)

    mama_status mamaQueue_getLowWatermark (mamaQueue queue, size_t* lowWatermark)

    # mama_status mamaQueue_setQueueMonitorCallbacks (mamaQueue queue, mamaQueueMonitorCallbacks* queueMonitorCallbacks, void* closure)

    mama_status mamaQueue_getEventCount (mamaQueue queue, size_t* count)

    mama_status mamaQueue_setQueueName (mamaQueue queue, const char *name)

    mama_status mamaQueue_getQueueName (mamaQueue queue, const char **name)

    mama_status mamaQueue_getQueueBridgeName (mamaQueue queue, const char **name)

    mama_status mamaQueue_dispatch (mamaQueue queue)

    mama_status mamaQueue_timedDispatch (mamaQueue queue, uint64_t timeout)

    mama_status mamaQueue_dispatchEvent (mamaQueue queue)

    mama_status mamaQueue_enqueueEvent (mamaQueue queue, mamaQueueEventCB callback, void *closure)

    mama_status mamaQueue_stopDispatch (mamaQueue queue)

    mama_status mamaQueue_setEnqueueCallback (mamaQueue queue, mamaQueueEnqueueCB callback, void *closure)

    mama_status mamaQueue_removeEnqueueCallback (mamaQueue queue)

    mama_status mamaQueue_enableStats (mamaQueue queue)

    mama_status mamaQueue_getClosure (mamaQueue queue, void **closure)

    mama_status mamaQueue_setClosure (mamaQueue queue, void *closure)

    # Dispatcher based functions.
    mama_status mamaDispatcher_create (mamaDispatcher* result, mamaQueue queue) 

    mama_status mamaDispatcher_getQueue (mamaDispatcher dispatcher, mamaQueue* result)

    mama_status mamaDispatcher_destroy (mamaDispatcher dispatcher)
