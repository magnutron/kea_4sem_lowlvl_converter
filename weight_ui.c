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
        display_weight_menu();

    case 2:
        printf("Enter the weight in Kilograms\n");
        scanf("%d", &option);
        printf("The weight in Ounces is %d\n", kilograms_to_ounces(option));
        display_weight_menu();

    case 3:
        printf("Enter the weight in Pounds\n");
        scanf("%d", &option);
        printf("The weight in Kilograms is %d\n", pounds_to_kilograms(option));
        display_weight_menu();

    case 4:
        printf("Enter the weight in Pounds\n");
        scanf("%d", &option);
        printf("The weight in Ounces is %d\n", pounds_to_ounces(option));
        display_weight_menu(); 

    case 5:
        printf("Enter the weight in Ounces\n");
        scanf("%d", &option);
        printf("The weight in Kilograms is %d\n", ounces_to_kilograms(option));
        display_weight_menu();

    case 6:
        printf("Enter the weight in Ounces\n");
        scanf("%d", &option);
        printf("The weight in Pounds is %d\n", ounces_to_pounds(option));
        display_weight_menu();

    case 7:
        printf("\e[1;1H\e[2J");
        printf("_________________________________________________________\n");
        display_menu();
    }
}