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

  @doc """
    A doc test:

    iex(1)> Drop.fall_velocity_test(:earth, 10)
    14.0
 
    iex(2)> Drop.fall_velocity_test(:mars, 20)
    11.679041056525147

  """
  def fall_velocity_test(planemo, distance) do
    gravity = case planemo do
      :earth -> 9.8
      :moon -> 1.6
      :mars -> 3.41
    end
    :math.sqrt(2 * gravity * distance)
  end

  def drop do
    receive do
      {from, planemo, distance} ->
        send(from, {planemo, distance, fall_velocity(planemo, distance)})
        drop()
    end
  end

  defp fall_velocity(:earth, distance) when distance >= 0 do
    :math.sqrt(2 * 9.8 * distance)
  end

  defp fall_velocity(:moon, distance) when distance >= 0 do
    :math.sqrt(2 * 1.6 * distance)
  end

  defp fall_velocity(:mars, distance) when distance >= 0 do
    :math.sqrt(2 * 3.71 * distance)
  end


end
