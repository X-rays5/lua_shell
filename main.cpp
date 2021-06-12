#include <iostream>
#include <string>
#include "lua.hpp"

lua::lua_state lua_;

void go() {
    std::cout << "lua> ";
    std::string command;
    std::getline(std::cin, command);


    if (command == "new_lua") {
        lua_ = std::move(lua::lua_state());
    } else {
        try {
            lua_.RunText(command);
        } catch (lua::lua_exception &e) {
            std::cout << e.what() << "\n";
        }
    }
    go();
}

int main() {
    std::cout << "Lua interactive shell started.\n\n";
    go();
    return EXIT_FAILURE;
}
