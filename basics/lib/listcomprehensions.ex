defmodule ListComprehensions do

  @doc """
    This is an example of a list comprehension, which will essentially create a new list after adapting each number in the list.
  """
  def listcomprehension do
    list = [2,4,6,8,10]
    tripleFunc = &(3 * &1)
    for num <- list, do: tripleFunc.(num)
  end

  def listcomprehensionfilter do
    list = [1,2,3,4,5,6,7,8,9,10]
    even = &(rem(&1,2) == 0)
    for num <- list, even.(num), do: num
  end
 
end
