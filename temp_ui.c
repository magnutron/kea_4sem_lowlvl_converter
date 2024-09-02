#include "temp_converters.c"
#include "distConverter.c"

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



