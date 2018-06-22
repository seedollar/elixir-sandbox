defmodule MacrosExample do


  defmacro macro_test(x) do
    IO.puts("#{inspect(x)}")
  end

  def func_test(x) do
    IO.puts("#{inspect(x)}")
  end 

  defmacro double x do
    {:*, [], [2, x]}
  end

  defmacro doubleQuote(x) do
    quote do
      2 * unquote(x)
    end
  end

  defmacro unless(condition, options) do
    quote do
      if(!unquote(condition),unquote(options))
    end
  end

  defmacro create_multiplier_function(func_name, factor) do
    quote do
      def unquote(func_name)(value) do
        value * unquote(factor)
      end
    end
  end

end
