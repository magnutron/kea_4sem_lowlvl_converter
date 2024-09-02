void display_weight_menu(){
    printf("_________________________________________________________\n");
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
        float kilograms;
        scanf("%f", &kilograms);
        printf("The weight in Pounds is %.2f\n", kilograms_to_pounds(kilograms));
        display_weight_menu();
        break;

    case 2:
        printf("Enter the weight in Kilograms\n");
        scanf("%f", &kilograms);
        printf("The weight in Ounces is %.2f\n", kilograms_to_ounces(kilograms));
        display_weight_menu();
        break;

    case 3:
        printf("Enter the weight in Pounds\n");
        float pounds;
        scanf("%f", &pounds);
        printf("The weight in Kilograms is %.2f\n", pounds_to_kilograms(pounds));
        display_weight_menu();
        break;

    case 4:
        printf("Enter the weight in Pounds\n");
        scanf("%f", &pounds);
        printf("The weight in Ounces is %.2f\n", pounds_to_ounces(pounds));
        display_weight_menu();
        break;

    case 5:
        printf("Enter the weight in Ounces\n");
        float ounces;
        scanf("%f", &ounces);
        printf("The weight in Kilograms is %.2f\n", ounces_to_kilograms(ounces));
        display_weight_menu();
        break;

    case 6:
        printf("Enter the weight in Ounces\n");
        scanf("%f", &ounces);
        printf("The weight in Pounds is %.2f\n", ounces_to_pounds(ounces));
        display_weight_menu();
        break;


    case 7:
        printf("\e[1;1H\e[2J");
        printf("_________________________________________________________\n");
        display_menu();
    }
}