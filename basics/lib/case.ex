defmodule CaseStatements do
  @moduledoc """
    This class will give illustations on how to apply the logical 'case' expression
  """
  
  @doc """
    This function illustates the use of the case expression, calculating a discount price based on the type of persion (child, adult, senior)
  """
  def calculateDiscount(type, price) when price > 0 do
    discount = case type do
      :child when price > 500 -> price * 0.18 ## Use of a guard condition to ensure that the price must be greater than 50 to get a child discount, else it's the default 2%
      :adult -> price * 0.05
      :senior -> price * 0.1
      _ -> price * 0.02 ## The '_' means all other cases.
    end
    price - discount
  end
end
