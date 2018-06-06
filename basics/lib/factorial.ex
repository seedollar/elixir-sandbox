defmodule Factorial do
  @moduledoc """
    This module will illustate how to calculate the factorial of a number in a recursive way
  """ 

  def factorial(num) when num > 1 do
    IO.puts("Calling from #{num}")
    result = num * factorial(num - 1)
    IO.puts("#{num} yields #{result}")
    result
  end

  def factorial(num) when num <= 1 do
    IO.puts("Calling from 1")
    IO.puts("1 yields 1")
    1
  end

end
