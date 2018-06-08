defmodule KeywordLists do
  @moduledoc """
    This module will illustrate how to utilize the Keyword module.
  """

  @doc """
    Shows how to apply the Keyword.get/2 function
  """
  def keywordGet(keywordList, key) do
    Keyword.get(keywordList, key)
  end

  @doc """
    Shows how to apply the Keyword.get/3 function, the third parameter being a default value if the key is not found.
  """
  def keywordGetWithDefault(keywordList, key) do
    Keyword.get(keywordList, key, "Unknown")
  end

  @doc """
    Shows how to apply the Keyword.fetch!/2 function, which will throw a KeyError is the key is not found
  """
  def keywordFetch(keywordList, key) do
    Keyword.fetch!(keywordList, key)
  end

  @doc """
    Shows how to apply the Keyword.has_Key?/2 function, returning true if the key is matched, else false.
  """
  def hasKeyword(keywordList, key) do
    Keyword.has_key?(keywordList, key)
  end

 
  
end
