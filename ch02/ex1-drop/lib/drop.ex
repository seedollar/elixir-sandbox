defmodule Drop do
  @moduledoc """
  Documentation for Drop.
  """

  @vsn 1.0

  import Convert

  @doc """
  A simple calculation function which illustrates how to use the capture operator (&)
  """
  @spec calculation(number()) :: float()
  def calculation(num) do
  	doubleAgain = &Convert.doubleMe/1
	pow3(doubleAgain.(num))
  end

  @doc """
  A  function which illustrates how to apply Elixir's pipe operator (|>)
  """
  def pipeCalculation(num) do
	import :math, only: [sqrt: 1]
	doubleMe(num) |> calculation |> sqrt
  end

  def fall_velocity(:earth, distance) do
	:math.sqrt(2 * 9.8 * distance)
  end

  def fall_velocity(:mars, distance) do
	:math.sqrt(2 * 3.71 * distance)
  end

  def fall_velocity(:moon, distance) do
	:math.sqrt(2 * 1.6 * distance)
  end

end
