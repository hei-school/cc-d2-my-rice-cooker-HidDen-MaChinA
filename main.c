#include <stdio.h>

// RiceCooker structure
typedef struct {
    int cooking_time;
    char contents[100]; // Assuming a fixed-size contents array
} RiceCooker;

// Function to cook something for a certain amount of time
void cook(RiceCooker *cooker, int minutes) {
    printf("Cooking for %d minutes.\n", minutes);
    cooker->cooking_time = minutes;
}

// Function to remove the things inside the rice cooker
void removeItems(RiceCooker *cooker) {
    printf("Removing items from the rice cooker.\n");
    // Additional logic for removing items if needed
}

// Function to throw the rice cooker to someone we don't like
void throwToHatedPerson(RiceCooker *cooker) {
    printf("Throwing the rice cooker to someone we don't like.\n");
    // Additional logic for throwing if needed
}

// Function to use the rice cooker as a chair and sit on it
void useAsChair(RiceCooker *cooker) {
    printf("Sitting on the rice cooker as a chair.\n");
    // Additional logic for using as a chair if needed
}

int main() {
    // Create an instance of RiceCooker
    RiceCooker myCooker;
    myCooker.cooking_time = 0; // Initialize cooking time to 0

    // Example usage
    cook(&myCooker, 15);
    removeItems(&myCooker);
    throwToHatedPerson(&myCooker);
    useAsChair(&myCooker);

    return 0;
}