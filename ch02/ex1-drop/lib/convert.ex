defmodule Convert do
  @moduledoc """
  Documentation for Convert.
  """
  import :math, only: [sqrt: 1]

  def inch_to_cm(inch) do
	inch * 2.54
  end

  def cm_to_inch(cm) do
	cm * 0.393700787
  end

  def doubleMe(num) do
	num * 2
  end

  # Elixir private function with keyword defp
  defp pow2(num) do
	:math.pow(num, 2)
  end

  def pow3(num) do
	:math.pow(num, 3)
  end

end
