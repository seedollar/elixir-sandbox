defmodule HigherOrderFunctions do

  def adapter(val, func) do
    func.(val) |> to_string |> Strings.concat " has been Adapted"
  end

  def testAdapter do
    fiver = fn x -> x * 5 end
    adapter(10, fiver) 
  end

  def ampersandCapture do
    sevener = &(7 * &1)
    adapter(10, sevener)
  end

  def enumEach do
    prt = &(IO.puts(&1))
    Enum.each([1,3,6,9], prt)
  end

  def enumMap do
    sqrfunc = &(&1 * &1)
    Enum.map(1..10, sqrfunc)
  end

  
end
