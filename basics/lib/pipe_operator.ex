defmodule PipeOperator do
  @moduledoc """
    This method illustrates how to use the pipe operator "|>" to compose functions together
  """

  def double_num(num), do: num * 2

  def add_five(num), do: num + 5

  def increment(num), do: num + 1

  def decrement(num), do: num - 1

  def execute(num) do
    ans = decrement(num)
          |> double_num
          |> add_five
          |> increment
    IO.puts(ans)
  end

  def execute2() do
    # Make sure you always use parenthesis with named functions when using them with the pipe operator.
    (1..10) |> Enum.map(&(&1*&1)) |> Enum.filter(&(&1 < 40))
  end
end
