defmodule Operators do
  @moduledoc """
    This module illustrates Elixir operators in action
  """

  @doc """
    This fuction illustrates Comparison operator operations
  """
  def comparison_operators do
    a = 1
    b = 1.0
    ans = a === b # strict equality (===). So 1 === 1.0 is false
    IO.puts "#{a} === #{b} is #{ans}"
    ans = a !== b # strict inequality (!===). So 1 !== 1.0 is true
    IO.puts "#{a} !== #{b} is #{ans}"
    ans = a == b # value equality (==). So 1 == 1.0 is true
    IO.puts "#{a} == #{b} is #{ans}"
    ans = a != b # value inequality (!=). So 1 != 1.0 is false
    IO.puts "#{a} != #{b} is #{ans}"
  end

  @doc """
    This function illustrates Boolean operators
  """
  def boolean_operators do
    a = true
    b = false
    ans = a or b
    IO.puts "#{a} 'or' #{b} is #{ans}"
    ans = a and b
    IO.puts "#{a} 'and' #{b} is #{ans}"
    ans = not a
    IO.puts "'not' #{a} is #{ans}"

    b = 1
    # Relaxed boolean operators. Anything other than nil or false is true
    ans = a || b
    IO.puts "#{a} '||' #{b} is #{ans}"
    ans = a && b
    IO.puts "#{a} '&&' #{b} is #{ans}"
    ans = !a
    IO.puts "'!'#{a} is #{ans}"
  end

  @doc """
    This function illustrates the 'in' operator
  """
  def in_operator do
    a = 1
    t = {:y, 5}
    ans = a in [1,2,3]
    IO.puts "#{a} 'in' [1,2,3] is #{ans}"
    ans = t in %{:x => 1, :y => 5}
    IO.puts "{:y, 5} 'in' %{:x 1, :y 5} is #{ans}"
  end

end