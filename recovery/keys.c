#include <linux/input.h>

#include "recovery_ui.h"
#include "common.h"
#include "extendedcommands.h"

int device_toggle_display(volatile char* key_pressed, int key_code) {
    return 0;
}

int device_handle_key(int key_code, int visible) {
    if (visible) {
        switch (key_code) {
            case 158: // back 
                return HIGHLIGHT_DOWN;

            case 139: // menu 
                return HIGHLIGHT_UP;

            case 102: // home 
                return SELECT_ITEM;
            
            case 107: // power 
                if (!ui_root_menu) {
                    return GO_BACK;
                }
        }
    }

    return NO_ACTION;
}
