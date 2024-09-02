int kelvin_to_fahrenheit(int kelvin) {
    return (kelvin - 273.15) * 9 / 5 + 32;
}

int kelvin_to_celsius(int kelvin){
    return kelvin - 273.15;
}

int fahrenheit_to_kelvin(int fahrenheit){
    return (fahrenheit - 32) * 5 / 9 + 273.15;
}

int fahrenheit_to_celsius(int fahrenheit){
    return (fahrenheit - 32) * 5 / 9;
}

int celsius_to_kelvin(int celsius){
    return celsius + 273.15;
}

int celsius_to_fahrenheit(int celsius){
    return (celsius * 9 / 5) + 32;
}