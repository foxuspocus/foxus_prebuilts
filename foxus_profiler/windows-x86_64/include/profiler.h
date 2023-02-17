#pragma once

#ifdef ENABLE_PERFETTO

#error "Perfetto is not supported on Windows"

#else

#define PROFILER_INIT() ((void)0)

#define TRACE_EVENT_BEGIN(...) ((void)0)
#define TRACE_EVENT_END(...) ((void)0)

#define TRACE_EVENT(...) ((void)0)
#define TRACE_EVENT_OPENGL(...) ((void)0)

#define TRACE_COUNTER(...) ((void)0)

#endif
