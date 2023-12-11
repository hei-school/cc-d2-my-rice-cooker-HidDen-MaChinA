defmodule RiceCooker do
  defstruct cooking_time: 0, contents: ""

  def cook(rice_cooker, minutes) do
    case is_number(minutes) do
    true ->
      IO.puts "Cooking for #{minutes} minutes."
      %RiceCooker{rice_cooker | cooking_time: minutes}

    false ->
      IO.puts "Invalid input. Please enter a valid number for minutes."
      rice_cooker
  end
end

  def remove_items(rice_cooker) do
    IO.puts "Removing items from the rice cooker."
    rice_cooker
  end

  def throw_to_hated_person(rice_cooker) do
    IO.puts "Throwing the rice cooker to someone we don't like."
    rice_cooker
  end

  def use_as_chair(rice_cooker) do
    IO.puts "Sitting on the rice cooker as a chair."
    rice_cooker
  end
end