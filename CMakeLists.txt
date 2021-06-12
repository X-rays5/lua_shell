cmake_minimum_required(VERSION 3.19)
project(lua_shell)

set(CMAKE_CXX_STANDARD 17)

include(FindLua)

find_package(Lua REQUIRED)
find_package(sol2 CONFIG REQUIRED)

add_executable(lua_shell main.cpp lua.hpp)

target_include_directories(lua_shell PRIVATE ${LUA_INCLUDE_DIR})

target_link_libraries(lua_shell PRIVATE ${LUA_LIBRARIES})
target_link_libraries(lua_shell PRIVATE sol2::sol2)