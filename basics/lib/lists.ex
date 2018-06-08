defmodule Lists do
  @moduledoc """
    This module will give examples and illusrations of how to use and apply lists on Elixir.
  """

  @doc """
    This function shows how you can apply the flatten function to flatten a list within a list.
  """
  def flatten do
    portion = [3,4,5]
    full = [1,2,portion,6,7,8] # This will produce [1,2,[3,4,5],6,7,8]
    List.flatten(full)
  end

  @doc """
    This function will illustate how you can merge 2 lists using Enum.concat
  """
  def enumConcat do
    init = [1,2,3,4,5,6]
    portion = [7,8,9]
    Enum.concat(init, portion)
  end

  @doc """
    This function will illustate how you can merge 2 lists using operators ++
  """
  def listConcat do
    init = [1,2,3,4,5,6]
    portion = [7,8,9]
    init ++ portion
  end

  @doc """
    This function shows how you can reverse the contents of a list using Enum.reverse
  """
  def reverseList do
    init = [1,2,3,4,5,6,7,8]
    Enum.reverse(init)
  end
  
end
