
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
        kilometers_to_miles();
        break;

    case 2:
        miles_to_kilometers();
        break;

    case 3:
        kilometers_to_schoinion();
        break;

    case 4:
        schoinion_to_kilometers();
        break; 

    case 5:
        miles_to_schoinion();
        break;

    case 6:
        schoinion_to_miles();
        break;

    default:
        break;
    }
}