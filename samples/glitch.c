#define C8_IMPL
#include "cel8/cel8.h"

#define C8_PLATFORM_SOKOL
#include "platform-sokol.c"

/* std */
#include <stdlib.h>

void c8_load(void)
{
/* cel8 */
#include "embed/font.h"
#include "embed/palette.h"
    c8_init(&(c8_desc_t){
        .roms = {
            .chars = (c8_range_t){.ptr = font_h, .size = sizeof(font_h)},
            .palette = (c8_range_t){.ptr = palette_h, .size = sizeof(palette_h)},
        },
    });
}

void c8_update(void)
{
    uint8_t n = (uint8_t)(rand() % 256);
    c8_poke(C8_MEM_VRAM_ADDR + (n * 2) + 0, rand() % 0xff); // color
    c8_poke(C8_MEM_VRAM_ADDR + (n * 2) + 1, rand() % 0x7f); // character
}

void c8_draw(void)
{
    /* body */
}