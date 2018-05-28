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
    This is the public function which will propogate to the private ones below
  """
  def calculateFine({type, speed}) do
    calculateFine(type, speed) 
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
