#ifdef ENABLE_PERFETTO

#ifndef CPROFILER_H
#define CPROFILER_H

#ifdef __cplusplus
extern "C" {
#endif
    void cprofiler_trace_event_begin(const char*);
    void cprofiler_trace_event_end();

    static inline void cprofiler_cleanup_end(u_int32_t* to_clean) {
        cprofiler_trace_event_end();
    }

    #define CPROFILER_TRACE_EVENT(name) \
    cprofiler_trace_event_begin(name); \
    u_int32_t cprofiler_trace_scoped___LINE__ __attribute__((cleanup(cprofiler_cleanup_end), unused)) = __LINE__;

#ifdef __cplusplus
}
#endif

#endif

#else
    #define CPROFILER_TRACE_EVENT(name) do{} while(0)
#endif