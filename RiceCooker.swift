import Foundation

class RiceCooker {
    var cookingTime: Int = 0
    var contents: String = ""

    func cook(minutes: String) -> Void {
        if let cookingMinutes = Int(minutes) {
            print("Cooking for \(cookingMinutes) minutes.")
            self.cookingTime = cookingMinutes
        } else {
            print("Invalid input. Please enter a valid number for minutes.")
        }
    }

    func removeItems() -> Void {
        print("Removing items from the rice cooker.")
    }

    func throwToHatedPerson() -> Void {
        print("Throwing the rice cooker to someone we don't like.")
    }

    func useAsChair() -> Void {
        print("Sitting on the rice cooker as a chair.")
    }
}
