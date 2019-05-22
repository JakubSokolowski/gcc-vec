//
// Created by jakub on 21.05.19.
//

#ifndef PROJECT_SDLUTILS_H
#define PROJECT_SDLUTILS_H

#include <tuple>
#include <iostream>
#include <SDL/SDL.h>
#include <SDL/SDL_image.h>
#include <vector>

#include "../Window.h"

Uint32 ToUint32Pixel(const std::tuple<int,int,int>& pixel ) {
    return  Uint32 ((uint8_t)(255) << 24u |
                    (uint8_t)(std::get<0>(pixel)) << 16u |
                    (uint8_t)(std::get<1>(pixel)) << 8u |
                    (uint8_t)(std::get<2>(pixel)));
}

void SetPixel(SDL_Surface *surface, int x, int y, Uint32 pixel){
    Uint32 *target_pixel = reinterpret_cast<Uint32 *>((Uint8 *) surface->pixels + y * surface->pitch +
                                                      x * sizeof *target_pixel);
    *target_pixel = pixel;
}

SDL_Surface* AllocateEmptySurface(int width, int height) {
    Uint32 rmask, gmask, bmask, amask;

    /* SDL interprets each pixel as a 32-bit number, so our masks must depend
       on the endianness (byte order) of the machine */
#if SDL_BYTEORDER == SDL_BIG_ENDIAN
    rmask = 0xff000000;
    gmask = 0x00ff0000;
    bmask = 0x0000ff00;
    amask = 0x000000ff;
#else
    rmask = 0x000000ff;
    gmask = 0x0000ff00;
    bmask = 0x00ff0000;
    amask = 0xff000000;
#endif

    return SDL_CreateRGBSurface(0, width, height, 32, rmask, gmask, bmask, amask);

}

void PaintImageOnScreen(SDL_Surface *image, SDL_Surface *screen){
    SDL_BlitSurface(image, NULL, screen, NULL);
    SDL_UpdateRect(screen, 0, 0, 0, 0);
};

#endif //PROJECT_SDLUTILS_H
