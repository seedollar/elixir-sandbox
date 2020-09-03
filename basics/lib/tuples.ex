defmodule Tuples do
  @moduledoc """
    This module illustrates the use of tuples.
  """

  def createTuple do
    speedLimitTuple = {:car, 120}
  end

  def showSizeOfTuple do
    tuple_size(createTuple())
  end

  @doc """
    This illustration shows how you can use tuples in pattern matching
  """
  def tuple_pattern_matching do
    {status, pid} = File.open("tuples.ex")
    IO.puts "status = #{status}}"
    pid

    {status, pid} = File.open("doesnotexist.ex")
    IO.puts "status = #{status}}"
    pid

  end

  @doc """
    This is the public function which will propogate to the private ones below
  """
  def calculateFine({type, speed}) do
    calculateFine(type, speed)
  end

  @doc """
    This method works the same way as calculateFine/2 above, except it uses the built in function elem/2 to extract the elements from the tuple parameter.
  """
  def calculateFine2(tuple) do
    calculateFine(elem(tuple, 0), elem(tuple, 1))
  end

  defp calculateFine(:car, 120) do
    "$400"
  end

  defp calculateFine(:car, 80) do
    "$200"
  end

  defp calculateFine(:car, 240) do
    "$940"
  end

  defp calculateFine(:bike, 100) do
    "$375"
  end

end
