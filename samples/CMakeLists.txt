macro(emscripten target)
  if (CMAKE_SYSTEM_NAME STREQUAL Emscripten)
    if (CMAKE_BUILD_TYPE STREQUAL "Release")
      set(CMAKE_EXECUTABLE_SUFFIX ".js")
    else()
      set(CMAKE_EXECUTABLE_SUFFIX ".html")
    endif()

    target_link_options(${target} PRIVATE
      --shell-file ../extra/shell.html
      -sINITIAL_MEMORY=50MB
      -sMAXIMUM_MEMORY=200MB
      -sALLOW_MEMORY_GROWTH=1
      -sUSE_WEBGL2=1
      -sSINGLE_FILE=1
      $<$<CONFIG:Debug>:-g>)
  endif()
endmacro()

macro(c8_project target file)
  add_executable(${target} ${file})
  target_link_libraries(${target} PRIVATE sokol)
  target_link_libraries(${target} PRIVATE cel8)
  target_include_directories(${target} PUBLIC ${THIRDPARTY_DIR})
  emscripten(${target})
endmacro()

# programs
c8_project(clock clock.c)
c8_project(crosshair crosshair.c)
c8_project(font font.c)
c8_project(glitch glitch.c)
c8_project(hello hello.c)
c8_project(palette palette.c)
# c8_project(snake snake.c)
# c8_project(sprite sprite.c)
c8_project(tetris tetris.c)