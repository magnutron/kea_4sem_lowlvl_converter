#include <stdio.h>
#include "temp.h"
#include "temp_ui.c"

int main(){

    display_intro();

    display_menu();

    int option;
    scanf("%d", &option);

    switch (option)
    {
    case 1:
        display_temperature_menu();
        break;

    case 2:
        display_distance_menu();
        break;
    
    case 3:
        display_weight_menu();
        break;
    
    default:
        break;
    }

    return 0;
}

