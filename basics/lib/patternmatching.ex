defmodule PatternMatching do
  @moduledoc """
    This module demonstrates the Elixir semantics around pattern matching
  """

  @doc """
    This function illustrates how a list of values is pattern matched to individual variables inside a list
  """
  def list_to_variables do
    list = [1, 2, 3]
    [a, b, c] = list
    IO.puts "a = #{a}"  # a = 1
    IO.puts "b = #{b}" # b = 2
    IO.puts "c = #{c}" # c = 3

    list2 = [1, 2, [3, 4, 5]]
    [a, b, c] = list2

    IO.puts "a = #{a}"  # a = 1
    IO.puts "b = #{b}" # b = 2
    IO.puts "c = #{c}" # c = [3,4,5]
  end

  @doc """
    This function illustrates how you can use the '_' character to ignore values for pattern matching
  """
  def underscore_ignore do
    list = [1, 2, 3]
    [a, _, b] = list
    IO.puts "a = #{a}}" # a = 1
    IO.puts "b = #{b}}" # b = 3
  end

  @doc """
    This function illustrates that pattern matching bindings to variables only happen once per matching
  """
  def bind_once_per_match do
    [a, a] = [1, 1] # This works because a is initially bound to value 1, so subsequent matching is valid because the second binding is the same value.
    IO.puts "a = #{a}"
    [a, a] = [1, 2] # This will throw an error, as the first 'a' is already bound to value 1, and cannot be subsequently bound to '2' per match.
  end

  @doc """
  This function illustrates the 'pin' operator (^) which forces Elixir to use the existing value of a variable during a match.
  """
  def pin_operator do
    [a,2,3] = [1,2,3]
    IO.puts "a = #{a}}"
    a = 4
    ^a = 5 # This will error because we use the existing value of 4 to compare against new value 5.
  end

end