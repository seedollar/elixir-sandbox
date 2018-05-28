defmodule Guards do
  @moduledoc """
  This demo illustrates how we can apply Elixir guards to pre filter parameters using the when clause
  """

  @vsn 1.0

  import :math

  def abs_value(num) when num < 0 do
	-num ## negate the number when the number is negative making it a positive number
  end

  def abs_value(num) when num == 0 do
	0 ## return 0 when the number is zero
  end

  def abs_value(num) when num > 0 do
	num ## return the number when the number is greater than zero
  end

  @doc """
    A function which illustates how to apply more than one guard
  """
  def pass(num) when num < 200 or num > 500 do
	"Pass"
  end

end
