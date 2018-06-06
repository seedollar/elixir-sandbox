defmodule CharacterLists do

  @doc """
    This function illustates how to concat character lists together.
  """
  def concat(char1, char2) do	
    char1 ++ char2
  end

  @doc """
    This function illustrates how to convert a character list to a string.
  """
  def convertToString(charSeq) do
    List.to_string(charSeq)
  end

end
