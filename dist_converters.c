
void kilometers_to_miles()
{
    printf("Enter the distance in Kilometers\n");
    float kilometers;
    scanf("%f", &kilometers);
    float miles = kilometers * 0.621371;
    printf("The distance in miles is: %.2f\n", miles);
}

void miles_to_kilometers()
{
    printf("Enter the distance in Miles\n");
    float miles;
    scanf("%f", &miles);
    float kilometers = miles / 0.621371;
    printf("The distance in kilometers is: %.2f\n", kilometers);
}

void kilometers_to_schoinion()
{
    printf("Enter the distance in Kilometers\n");
    float kilometers;
    scanf("%f", &kilometers);
    float schoinion = kilometers / 12;
    printf("The distance in Schoinion is: %.2f\n", schoinion);
}

void schoinion_to_kilometers()
{
    printf("Enter the distance in Schoinion\n");
    float schoinion;
    scanf("%f", &schoinion);
    float kilometers = schoinion * 12;
    printf("The distance in kilometers is: %.2f\n", kilometers);
}

void miles_to_schoinion()
{
    printf("Enter the distance in Miles\n");
    float miles;
    scanf("%f", &miles);
    float schoinion = miles * 5280;
    printf("The distance in Schoinion is: %.2f\n", schoinion);
}

void schoinion_to_miles()
{
    printf("Enter the distance in Schoinion\n");
    float schoinion;
    scanf("%f", &schoinion);
    float miles = schoinion / 5280;
    printf("The distance in miles is: %.2f\n", miles);
}

