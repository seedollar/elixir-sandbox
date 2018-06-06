defmodule Recursion do

  @moduledoc """
    This module will illustrate how to perform a recursive operation in Elixir.	
  """

  @doc """
    This function illustrates how we can perform a recursive function to countdown numbers, while the number is greater than 0. The guard ensures that when the number is 0, we call the other
    countdown function and print the 'blastoff!' message
  """
  def countdown(from) when from > 0 do
    IO.inspect(from)
    countdown(from-1)
  end

  def countdown(from) do
    IO.puts("blastoff!")
  end

  @doc """
    This recursive function shows how you can use an accumulator variable to keep track of the recursive operation, ensuring that we call the countup method until the count variable is > limit
    variable, at which point we print 'Completed'.
  """
  def countup(limit) do
    countup(1, limit)
  end

  defp countup(count, limit) when count <=  limit do
    IO.inspect(count)
    countup(count+1, limit)
  end

  defp countup(_count, _limit) do
    IO.puts("Completed")
  end
  
end
