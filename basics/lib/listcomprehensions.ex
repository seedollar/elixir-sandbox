defmodule ListComprehensions do

  @doc """
    This is an example of a list comprehension, which will essentially create a new list after adapting each number in the list.
  """
  def listcomprehension do
    list = [2,4,6,8,10]
    tripleFunc = &(3 * &1)
    for num <- list, do: tripleFunc.(num)
  end

  @doc """
    This function will apply a list comprehension, with 2 predicates (1) ensuring the number is even, (2) ensure the number is greater than 4. The result is a new list with even numbers greater than 4
  """
  def listcomprehensionfilter do
    list = [1,2,3,4,5,6,7,8,9,10]
    even = &(rem(&1,2) == 0)
    for num <- list, even.(num), num > 4, do: to_string(num)
  end
 
end
