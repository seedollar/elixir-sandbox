defmodule IfElseStatment do
  @moduledoc """
    This class will give illustations on how to apply the logical 'if-else' expression
  """

  @doc """
    A function which illustrates how to apply the if-else statement
  """
  def canDrink(age) do
    if age > 21 do
      IO.puts("You can drink")
    else
      IO.puts("You cannot drink")
    end
  end

  @doc """
    A function which illustrates how to apply the shorter form of an if-else statement
  """
  def canGamble(age) do
    if age > 18, do: IO.puts("play"), else: IO.puts("leave")
  end

  @doc """
    A function which illustrates how to apply the unless statement, similiar to if-else, but the inverse
  """
  def canDrive(age) do
    unless age > 16, do: :backseat, else: :drive
  end
end
