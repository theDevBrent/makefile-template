#include <SDL2/SDL.h>
#include <iostream>

int main()
{
    if (SDL_Init(SDL_INIT_VIDEO) < 0) {
        std::cout << "Failed to init the SDL2 \n";
        return -1;
    }

    SDL_Window* window = SDL_CreateWindow("It Opened", SDL_WINDOWPOS_CENTERED,
        SDL_WINDOWPOS_CENTERED, 400, 400, 0);
    if (!window) {
        std::cout << "Failed to create window\n";
        return -1;
    }

    bool keep_window_open = true;
    while (keep_window_open) {
        SDL_Event e;
        while (SDL_PollEvent(&e) > 0) {
            switch (e.type) {
            case SDL_QUIT:
                keep_window_open = false;
                break;
            }
        }
    }
}