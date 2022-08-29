#pragma once

#ifdef ENABLE_PERFETTO

#include "perfetto.h"

void profiler_init(void);

#define PROFILER_INIT() profiler_init()

PERFETTO_DEFINE_CATEGORIES(
    perfetto::Category("godot").SetDescription("Godot"),
    perfetto::Category("eiffel_camera").SetDescription("Eiffel Camera"),
    perfetto::Category("image_processor").SetDescription("Image Processor"),
    perfetto::Category("c_profiler").SetDescription("C Profiler")
);

#else

#define PROFILER_INIT() ((void)0)

#define TRACE_EVENT_BEGIN(...) ((void)0)
#define TRACE_EVENT_END(...) ((void)0)

#define TRACE_EVENT(...) ((void)0)

#define TRACE_COUNTER(...) ((void)0)

#endif
