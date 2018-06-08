defmodule MapExamples do
  @moduledoc """
    A module which illustrates Map examples.
  """

  def declareMap do
    new_map = %{:a => 10, :b => 24, :c => 37}
  end

  def declareMap2 do
    new_map = %{a: 14, b: 25, c: 31}
  end

  def updateMap do
    %{declareMap() | b: 3} # update entry with key b to value 3
  end

  def addToMap do
    declareMap2() |> Map.put_new :d, 4
  end

  def patternMatchGet do
    %{b: retValue} = declareMap2()
    retValue    
  end
  

end
