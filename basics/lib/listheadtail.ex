defmodule ListHeadTail do
  @moduledoc """
    This module will give an illutration of how to use the [head | tail] operation to recursively iterate through a list.
  """

  def product([]) do
    0
  end

  def product(list) do
    product(list, 1)
  end

  def product([], accumulator) do
    accumulator
  end

  def product([head | tail], accumulator) do
    product(tail, head * accumulator)
  end
end
