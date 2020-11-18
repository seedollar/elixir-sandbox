defmodule EnumFunctions do

  def enumAll do
    list = [2,4,6,8,10]
    even? = &(rem(&1,2) == 0)
    Enum.all?(list, even?) 
  end

  def enumAny do
    list = ["B", "f", "rew", "%", true]
    int? = &(is_integer(&1))
    Enum.any?(list, int?) 
  end

  def enumTakeWhile do
    list = [1,2,3,4,5,6,7,8,9,10]
    lessThan6? = &(&1 < 6)
    Enum.take_while(list, lessThan6?)
  end

  def enumDropWhile do
    list = [1,2,3,4,5,6,7,8,9,10]
    lessThan6? = &(&1 < 6)
    Enum.drop_while(list, lessThan6?)
  end

  def enumSplitWith do
    list = [1,2,3,4,5,6,7,8,9,10]
    odd? = &(rem(&1,2) == 1)
    Enum.split_with(list, odd?)
  end

  def enum_map do
    double_fn = &(&1 * 2)
    numbers = [1,2,3,4,5]
    Enum.map(numbers, double_fn) # each number will be doubled
  end
  
end
