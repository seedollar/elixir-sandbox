defmodule MacroFunctionExample do
  require MacrosExample

  MacrosExample.create_multiplier_function(:double, 2)
  MacrosExample.create_multiplier_function(:triple, 3)

  def example do
    x = double(10)
    y = triple(7)
    x + y
  end

end
