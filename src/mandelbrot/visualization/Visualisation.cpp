#include "Visualisation.h"
#include "SDLUtils.h"

void Visualisation::DisplayFractal(const Fractal &fractal) const {
    bool smooth_color = true;
    SDL_Surface* image = GenerateFractalSurface(fractal, smooth_color);

    Uint32 flags;
    SDL_Surface *screen;
    int depth, done;
    SDL_Event event;


    flags = SDL_SWSURFACE;
    printf( "\n\nImage properts:\n" );
    printf( "BitsPerPixel = %i \n", image->format->BitsPerPixel );
    printf( "BytesPerPixel = %i \n", image->format->BytesPerPixel );
    printf( "width %d ,height %d \n\n", image->w, image->h );

    SDL_WM_SetCaption("Mandelbrot", "showimage");

    depth = 32;
    screen = SDL_SetVideoMode(image->w, image->h, depth, flags);
    if ( screen == nullptr) {
        fprintf(stderr,"Couldn't set %dx%dx%d video mode: %s\n", image->w, image->h, depth, SDL_GetError());
    }

    /* Set the palette, if one exists */
    if ( image->format->palette ) {
        SDL_SetColors(screen, image->format->palette->colors, 0, image->format->palette->ncolors);
    }


    /* Display the image */
    PaintImageOnScreen(image, screen);
    done = 0;
    while (!done ) {
        if ( SDL_PollEvent(&event) ) {
            switch (event.type) {
                case SDL_KEYUP:
                    switch (event.key.keysym.sym) {
                        case SDLK_ESCAPE:
                        case SDLK_TAB:
                        case SDLK_q:
                            done = 1;
                            break;
                        case SDLK_s:
                            printf("Saving surface at mandlebrot.bmp ...");
                            SDL_SaveBMP(image, "mandlebrot.bmp" );
                            printf("Done.\n");
                        default:
                            break;
                    }
                    break;
                case SDL_QUIT:
                    done = 1;
                    break;
                default:
                    break;
            }
        } else {
            SDL_Delay(10);
        }
    }
    SDL_FreeSurface(image);
    SDL_FreeSurface(screen);
    SDL_Quit();

}

SDL_Surface *Visualisation::GenerateFractalSurface(const Fractal& fractal, bool smooth_color) const {
    SDL_Surface* surface = AllocateEmptySurface(fractal.scr.width(), fractal.scr.height());
    int k = 0;
    std::tuple<int, int, int> rgb;
    auto x_min = fractal.scr.x_min();
    auto x_max = fractal.scr.x_max();
    auto y_min = fractal.scr.y_min();
    auto y_max = fractal.scr.y_max();
    for(int i = y_min; i < y_max; ++i) {
        for(int j = x_min; j < x_max; ++j) {
            int n = fractal.colors[k];
            rgb = smooth_color ? GetRgbSmooth(n, fractal.max_iter) : GetRgbPiecewiseLinear(n, fractal.max_iter);
            Uint32 pixel = ToUint32Pixel(rgb);
            SetPixel(surface, i, j, pixel);
            k++;
        }
    }
    return surface;
}

std::tuple<int, int, int> Visualisation::GetRgbPiecewiseLinear(int n, int iter_max) const {
    int N = 256; // colors per element
    int N3 = N * N * N;
    // map n on the 0..1 interval (real numbers)
    double t = (double)n/(double)iter_max;
    // expand n on the 0 .. 256^3 interval (integers)
    n = (int)(t * (double) N3);

    int b = n/(N * N);
    int nn = n - b * N * N;
    int r = nn/N;
    int g = nn - r * N;
    return std::tuple<int, int, int>(r, g, b);
}

std::tuple<int, int, int> Visualisation::GetRgbSmooth(int n, int iter_max) const {
    // map n on the 0..1 interval
    double t = (double)n/(double)iter_max;

    // Use smooth polynomials for r, g, b
    int r = (int)(9*(1-t)*t*t*t*255);
    int g = (int)(15*(1-t)*(1-t)*t*t*255);
    int b =  (int)(8.5*(1-t)*(1-t)*(1-t)*t*255);
    return std::tuple<int, int, int>(r, g, b);
}
