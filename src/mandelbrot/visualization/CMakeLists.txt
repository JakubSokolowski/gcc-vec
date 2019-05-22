set(
        HEADER_FILES
        Visualisation.h
        SDLUtils.h
)
set(
        SOURCE_FILES
        Visualisation.cpp
)

add_library(vis STATIC ${SOURCE_FILES} ${HEADER_FILES})