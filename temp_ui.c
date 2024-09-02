#include "fahrenheit_to_celsius.c"
#include "celsius_to_fahrenheit.c"
#include "celsius_to_kelvin.c"
#include "kelvin_to_celsius.c"
#include "fahrenheit_to_kelvin.c"
#include "kelvin_to_fahrenheit.c"

void display_intro(){
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
}

void display_menu(){
    printf("Please select an option from the menu below\n");
    printf("1. Convert temperatures\n");
    printf("2. Convert distances\n");
    printf("3. Convert weights\n");
    printf("5. Exit\n");
    printf("_________________________________________________________\n");
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
}

void display_temperature_menu(){
    printf("Please select an option from the menu below\n");
    printf("1. Convert from Celsius to Fahrenheit\n");
    printf("2. Convert from Fahrenheit to Celsius\n");
    printf("3. Convert from Celsius to Kelvin\n");
    printf("4. Convert from Kelvin to Celsius\n");
    printf("5. Convert from Fahrenheit to Kelvin\n");
    printf("6. Convert from Kelvin to Fahrenheit\n");
    printf("7. Return to main menu\n");
    printf("_________________________________________________________\n");

    int option;
    scanf("%d", &option);
    switch (option)
    {
    case 1:
        printf("Enter the temperature in Celsius\n");
        scanf("%d", &option);
        printf("The temperature in Fahrenheit is %d\n", celsius_to_fahrenheit(option));
        break;

    case 2:
        printf("Enter the temperature in Fahrenheit\n");
        scanf("%d", &option);
        printf("The temperature in Celsius is %d\n", fahrenheit_to_celsius(option));
        break;

    case 3:
        printf("Enter the temperature in Celsius\n");
        scanf("%d", &option);
        printf("The temperature in Kelvin is %d\n", celsius_to_kelvin(option));
        break;

    case 4:
        printf("Enter the temperature in Kelvin\n");
        scanf("%d", &option);
        printf("The temperature in Celsius is %d\n", kelvin_to_celsius(option));
        break;
    
    case 5:
        printf("Enter the temperature in Fahrenheit\n");
        scanf("%d", &option);
        printf("The temperature in Kelvin is %d\n", fahrenheit_to_kelvin(option));
        break;
    
    case 6:
        printf("Enter the temperature in Kelvin\n");
        scanf("%d", &option);
        printf("The temperature in Fahrenheit is %d\n", kelvin_to_fahrenheit(option));
        break;

    case 7:
        printf("\e[1;1H\e[2J");
        printf("_________________________________________________________\n");
        display_menu();
    }

}

void display_distance_menu(){
    printf("Please select an option from the menu below\n");
    printf("1. Convert from Kilometers -> Miles\n");
    printf("2. Convert from Miles -> Kilometers\n");
    printf("3. Convert from Kilometers -> Schoinion\n");
    printf("4. Convert from Schoinion -> Kilometers\n");
    printf("5. Convert from Miles -> Schoinion\n");
    printf("6. Convert from Schoinion -> Miles\n");
    printf("7. Return to main menu\n");
    printf("_________________________________________________________\n");

    int option;
    scanf("%d", &option);

    switch (option)
    {
    case 1:
        printf("Enter the distance in Kilometers\n");
        break;

    case 2:
        printf("Enter the distance in Miles\n");
        break;

    case 3:
        printf("Enter the distance in Kilometers\n");
        break;

    case 4:
        printf("Enter the distance in Schoinion\n");
        break; 

    case 5:
        printf("Enter the distance in Miles\n");
        break;

    case 6:
        printf("Enter the distance in Schoinion\n");
        break;

    default:
        break;
    }
}

void display_weight_menu(){
    printf("Please select an option from the menu below\n");
    printf("1. Convert from Kilograms to Pounds\n");
    printf("2. Convert from Kilograms to Ounces\n");
    printf("3. Convert from Pounds to Kilograms\n");
    printf("4. Convert from Pounds to Ounces\n");
    printf("5. Convert from Ounces to Kilograms\n");
    printf("6. Convert from Ounces to Pounds\n");
    printf("7. Return to main menu\n");
    printf("_________________________________________________________\n");

    int option;
    scanf("%d", &option);

    switch (option)
    {
    case 1:
        printf("Enter the weight in Kilograms\n");
        scanf("%d", &option);
        printf("The weight in Pounds is %d\n", kilograms_to_pounds(option));
        break;

    case 2:
        printf("Enter the weight in Kilograms\n");
        scanf("%d", &option);
        printf("The weight in Ounces is %d\n", kilograms_to_ounces(option));
        break;

    case 3:
        printf("Enter the weight in Pounds\n");
        scanf("%d", &option);
        printf("The weight in Kilograms is %d\n", pounds_to_kilograms(option));
        break;

    case 4:
        printf("Enter the weight in Pounds\n");
        scanf("%d", &option);
        printf("The weight in Ounces is %d\n", pounds_to_ounces(option));
        break; 

    case 5:
        printf("Enter the weight in Ounces\n");
        scanf("%d", &option);
        printf("The weight in Kilograms is %d\n", ounces_to_kilograms(option));
        break;

    case 6:
        printf("Enter the weight in Ounces\n");
        scanf("%d", &option);
        printf("The weight in Pounds is %d\n", ounces_to_pounds(option));
        break;

    default:
        break;
    }
}