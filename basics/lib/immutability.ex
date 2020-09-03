defmodule Immutability do
  @moduledoc """
    This module will illustrate some of the semantics around immutability within Elixir
  """

  @doc """
    This function illustrates the 'new' operator (|) which is used to construct a new list
  """
  def new_operator do
    list1 = [1, 2, 3]
    list2 = [4 | list1]
  end

  @doc """
    This function illustrates that you don't need to declare a String to be capitalized, you simply define the String to initiallly be all lowercase, and then use API functions to transform the String to be capitalized.
  """
  def capitalize_string do
    name = "helios"
    cap_name = String.capitalize name
    IO.puts "name = #{name}"
    IO.puts "cap_name = #{cap_name}"
  end
end