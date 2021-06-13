#include <iostream>
#include <string>
#include <fstream>
#include <filesystem>
#include <csignal>
#include "lua.hpp"

template<class ...Args>
void DeleteTempfile(Args... args) {
    if (std::filesystem::exists("lua_shell.tmp"))
        std::filesystem::remove("lua_shell.tmp");
}

void multiline(lua::lua_state& lua_) {
    std::vector<std::string> multi_line;

    std::string buffer;
    newline:
    std::getline(std::cin, buffer);
    if (buffer != "end_multi_line") {
        multi_line.emplace_back(buffer);
        goto newline;
    } else {
        try {
            std::ofstream writer("lua_shell.tmp");
            if (writer.is_open()) {
                for (auto&& line : multi_line)
                    writer << line << "\n";
                writer.close();
                lua_.ExcecuteFile("lua_shell.tmp");
                std::filesystem::remove("lua_shell.tmp");
            } else {
                std::cout << "Couldn't execute";
            }
        } catch (lua::lua_exception &e) {
            std::cout << e.what() << "\n";
        }
        DeleteTempfile();
    }
}

void go(lua::lua_state& lua_) {
    std::cout << "lua> ";
    std::string command;
    std::getline(std::cin, command);

    if (command == "new_lua") {
        lua_ = std::move(lua::lua_state());
    } else if (command == "new_multi_line") {
        multiline(lua_);
    } else {
        try {
            std::ofstream writer("lua_shell.tmp");
            if (writer.is_open()) {
                writer << command;
                writer.close();
                lua_.ExcecuteFile("lua_shell.tmp");
            } else {
                std::cout << "Couldn't execute";
            }
        } catch (lua::lua_exception &e) {
            std::cout << e.what() << "\n";
        }
        DeleteTempfile();
    }
    go(lua_);
}

int main() {
    atexit(DeleteTempfile);
    at_quick_exit(DeleteTempfile);
    signal(SIGSEGV, DeleteTempfile);
    std::set_terminate(&DeleteTempfile);

    std::cout << "Lua interactive shell started.\n\n";

    lua::lua_state lua_;
    go(lua_);
    return EXIT_FAILURE;
}
