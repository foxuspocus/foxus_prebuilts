#ifndef CPROFILER_H
#define CPROFILER_H

#ifdef ENABLE_PERFETTO

#error "Perfetto is not supported on Windows"

#else

#define CPROFILER_TRACE_EVENT(name) do{} while(0)

#endif

#endif
