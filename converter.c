#include <stdio.h>
#include "temp_converters.c"
#include "temp_ui.c"
#include "weight_converters.c"
#include "weight_ui.c"
#include "dist_ui.c"
#include "dist_converters.c"
#include "menu_ui.c"

int main(){
    printf("          |\n");
    printf("        --+--\n");
    printf("    /  \\  |\n");
    printf("   |    | |\n");
    printf("   \\____/ |\n");
    printf("   ( .. ) |\n");
    printf("   /\\__/\\ |      WOLOLOOOO\n");
    printf("  /\\ qp /\\|\n");
    printf(" /  |  |  |\n");
    printf("/|  |db| /\\`|\n");
    printf("| \\ |  | \\|_|\n");
    printf("\\  \\|qp|  |\n");
    printf(" \\__/  |  |\n");
    printf(" |/||db|  |\n");
    printf(" |  |  |  |\n");
    printf("-=Welcome to the CONVERTER!=-\n");
    printf("This program helps with converting different units\n");
    printf("_________________________________________________________\n");

    display_menu();
    return 0;
}

