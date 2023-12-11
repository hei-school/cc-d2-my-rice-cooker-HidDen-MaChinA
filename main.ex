defmodule Main do
  import RiceCooker

  def execute(rice_cooker) do
    IO.puts("Make a choice:")
    IO.puts("1. Cook something")
    IO.puts("2. Remove the food inside")
    IO.puts("3. Throw it to people you don't like")
    IO.puts("4. Use it as a chair")
    IO.puts("5. Exit")

    choice = IO.gets("") |> String.trim()

    case choice do
      "1" ->
        IO.puts("Enter cooking time (in minutes):")
        minutes = IO.gets("") |> String.trim()
        updated_rice_cooker = cook(rice_cooker, minutes)
        Main.execute(updated_rice_cooker)

      "2" ->
        updated_rice_cooker = remove_items(rice_cooker)
        Main.execute(updated_rice_cooker)

      "3" ->
        updated_rice_cooker = throw_to_hated_person(rice_cooker)
        Main.execute(updated_rice_cooker)

      "4" ->
        updated_rice_cooker = use_as_chair(rice_cooker)
        Main.execute(updated_rice_cooker)

      "5" ->
        IO.puts("Exiting. Goodbye!")
        :ok

      _ ->
        IO.puts("Invalid choice. Please enter a number between 1 and 5.")
        Main.execute(rice_cooker)
    end
  end
end

initial_rice_cooker = %RiceCooker{}
Main.execute(initial_rice_cooker)