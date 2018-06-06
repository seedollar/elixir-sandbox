defmodule PromptInput do
@moduledoc """
  This module illustrates how you can capture input from the IO library.
"""

  @doc """
    This function will prompt the user with menu options. The user can then type in a selection.
  """
  def ask do
    IO.puts("""
      Please select an option:
      1) -> Login
      2) -> Suspend
      3) -> Collapse
      4) -> Exit
    """)
    # Take note that the '<Enter>' key will also be recorded, thus you will see a nil result on the second output.
    IO.getn("Selection: ")
  end

  def calculateCarPrice do
    carMake = captureMake
    milage = captureMilage
    
    case carMake do
      "1" when milage > 100 -> 170000
      "2" when milage > 600 -> 220000
      "3" -> 67000
      "4" -> 98000
       _ -> 5000
    end
  end
 
  defp captureMake do
    IO.puts("""
      What is the car make:
      1) BMW
      2) Audi
      3) Toyota
      4) Lexus
    """)
    selection = IO.gets("Make: ")
    String.first(selection)
  end

  defp captureMilage do
    IO.puts("What is the milage on the vehicle: ")
    input = IO.gets("Milage: ")
    milage = String.strip(input)
    String.to_integer(milage)
  end
end
