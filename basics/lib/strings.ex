defmodule Strings do

  @moduledoc """
     This module illustrates string manipulations.
  """

  @doc """
    This function illustrates how to apply string concatenation.
  """
  def concat(str1, str2) do
    str1 <> str2
  end

  def posfix(str) do
    posfix = "able"
    str <> posfix
  end

  @doc """
    This function illustrates how to apply string interpolation in Elixir.
  """
  def interpolation(word1, word2) do
    "Word 1: #{word1}, Word 2: #{word2}"
  end

  @doc """
    This function illustrates the use of the inspect keyword when evaluating types other than strings during interpolation.
  """
  def interpolationInspect() do
    evenNumbers = {2,4,6,8,10}
    "Even numbers: #{inspect evenNumbers}"
  end

  @doc """
   This function illustates string equality in the general sense.
  """
  def generalEquality do
    1 == 1.0
  end

  @doc """
   This function illustates string equality in the stricter sense.
  """
  def stricterEquality do
    1 === 1.0
  end

  @doc """
    This function shows to determine a string variable's length.
  """
  def showLength(str) do
    String.length(str)
  end  

  @doc """
    This function shows to determine a string's byte length.
  """
  def byteLength(str) do
    byte_size(str)
  end

  @doc """
    This function illustates how to convert a string to a character list.
  """
  def convertToCharacterList(str) do
    String.to_charlist(str)
  end

  @doc """
    This function illustates how you can apply string sigils to create strings. This particular example does not apply any escaping or interpolation.
  """
  def stringSigilWithoutInterpolation do
    ~S"This is a log with error: #{exception} \n Cause: #{cause}"
  end

  @doc """
    This function illustates how you can apply string sigils to create strings. This particular example appliesy escaping and interpolation.
  """
  def stringSigilWithInterpolation do
    exception = "NullPointerException"
    cause = "NPE"
    # The lowercase 's' means we should apply escaping and interpolation.
    ~s"This is a log with error: #{exception} \n Cause: #{cause}"
  end
end
