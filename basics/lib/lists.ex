defmodule Lists do
  @moduledoc """
    This module will give examples and illusrations of how to use and apply lists on Elixir.
  """

  @doc """
    This function shows how you can apply the flatten function to flatten a list within a list.
  """
  def flatten do
    portion = [3, 4, 5]
    full = [1, 2, portion, 6, 7, 8] # This will produce [1,2,[3,4,5],6,7,8]
    List.flatten(full)
  end

  @doc """
    This function will illustate how you can merge 2 lists using Enum.concat
  """
  def enumConcat do
    init = [1, 2, 3, 4, 5, 6]
    portion = [7, 8, 9]
    Enum.concat(init, portion)
  end

  @doc """
    This function will illustate how you can merge 2 lists using operators ++
  """
  def listConcat do
    init = [1, 2, 3, 4, 5, 6]
    portion = [7, 8, 9]
    init ++ portion
  end

  @doc """
    This function will illustate how you can calculate the difference between 2 lists using operators --
  """
  def listDifference do
    init = [1, 2, 3, 4, 5, 6]
    portion = [2, 3, 4, 5]
    init -- portion
  end


  @doc """
    This function shows how you can reverse the contents of a list using Enum.reverse
  """
  def reverseList do
    init = [1, 2, 3, 4, 5, 6, 7, 8]
    Enum.reverse(init)
  end

  def enumFilter do
    even = &(rem(&1, 2) == 0)
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    Enum.filter(numbers, even)
  end

  @doc """
    This function illustrates how you can use foldl() to reduce a list from the left to right
  """
  def foldl_example() do
    List.foldl([1, 2, 3], "", fn value, acc -> acc <> "," <> to_string(value) end)
  end

  @doc """
    This function illustrates how you can use foldr() to reduce a list from the right to left
  """
  def foldr_example() do
    List.foldr([1, 2, 3], "", fn value, acc -> acc <> "," <> to_string(value) end)
  end

  @doc """
    An example of how to apply a map reduce on a list using List.foldl(). The function will square the value and add it to the accumulator. The result is an aggregation of each result.
  """
  def foldlAccumulator do
    list = [2, 4, 6]
    sumsq = &(&2 + &1 * &1)
    List.foldl(list, 0, sumsq)
  end

  @doc """
    This function illustrates how you can check for membership on a given list using 'in' clause
  """
  def listMembership do
    list = [2, 4, 6, 8, 10]
    ans = 2 in list # Result is true
    IO.puts "ans = #{ans}"
    ans = "cigar" in list # Results in false
    IO.puts "ans = #{ans}"
  end

  @doc """
    This function illustrates how to use the "replace_at()" to replace a value at a specific index in a list. This is not a cheap operation
  """
  def replace_at_example() do
    list = [2, 4, 6, 8, 10]
    List.replace_at(list, 4, 17)
  end

  @doc """
    This function illustrates how to use the `keyfind()` method to search for tuples within a list
  """
  def keyfind_example() do
    list = [{:color, "red"}, {:difficulty, "hard"}, {:gear, "third"}, {:tags, "complicated", "engaging"}]
    List.keyfind(list, "complicated", 1)
  end


end
