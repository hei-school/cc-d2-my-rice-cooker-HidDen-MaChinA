
func execute(_ riceCooker: RiceCooker) {
    while(true){
        print("Make a choice:")
        print("1. Cook something")
        print("2. Remove the food inside")
        print("3. Throw it to people you don't like")
        print("4. Use it as a chair")
        print("5. Exit")

        guard let choice = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines) else {
            return
        }

        switch choice {
        case "1":
            print("Enter cooking time (in minutes):")
            if let minutes = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines) {
                riceCooker.cook(minutes: minutes)
                continue
            }
        case "2":
            riceCooker.removeItems()
            continue
        case "3":
            riceCooker.throwToHatedPerson()
            continue
        case "4":
            riceCooker.useAsChair()
            continue
        case "5":
            print("Exiting. Goodbye!")
            return
        default:
            print("Invalid choice. Please enter a number between 1 and 5.")
            continue
        }
    }
}
let initialRiceCooker = RiceCooker()
execute(initialRiceCooker)

let initialRiceCooker = RiceCooker()
execute(initialRiceCooker)