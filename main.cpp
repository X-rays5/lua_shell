#include <iostream>
#include <string>
#include <fstream>
#include <filesystem>
#include "lua.hpp"

void go(lua::lua_state& lua_) {
    std::cout << "lua> ";
    std::string command;
    std::getline(std::cin, command);


    if (command == "new_lua") {
        lua_ = std::move(lua::lua_state());
    } else {
        try {
            std::ofstream writer("lua_shell.tmp");
            if (writer.is_open()) {
                writer << command;
                writer.close();
                lua_.ExcecuteFile("lua_shell.tmp");
                std::filesystem::remove("lua_shell.tmp");
            } else {
                std::cout << "Couldn't execute";
            }
        } catch (lua::lua_exception &e) {
            std::cout << e.what() << "\n";
        }
    }
    go(lua_);
}

int main() {
    std::cout << "Lua interactive shell started.\n\n";

    lua::lua_state lua_;
    go(lua_);
    return EXIT_FAILURE;
}
