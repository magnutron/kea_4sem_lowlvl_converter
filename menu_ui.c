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
    
    case 5:
        exit(0);
        break;
    
    default:
        break;
    }
}