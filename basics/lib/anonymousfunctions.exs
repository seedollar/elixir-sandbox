defmodule AnonymousFunctions do
  @moduledoc """
  This module gives some illustrations about how to define and use anonymous functions
  """

  @doc """
    This function illustrates how to define an anonymous function using "fn" keyword
  """
  def define_anonymous_fn do
    greet_fn = fn -> "Yolo" end
    IO.puts "greet_fn = #{greet_fn.()}" # you will need parenthesis to call the function if there are no arguments
    double_fn = fn x -> x * 2 end
    IO.puts "double_fn = #{double_fn.(8)}"
    sum_fn = fn (x, y) -> x + y end
    IO.puts "sum_fn = #{sum_fn.(3, 7)}"
  end

  @doc """
    This function illustrates how to define an anonymous function using "&" shorthand
  """
  def define_anonymous_fn_shorthand do
    double_fn = &(&1 * 2) #Reference the parameters with &<Parameter number)
    double_fn.(10)
  end

  @doc """
    This function illustrates how to define an anonymous function which supports multiple pattern matching parameter bodies
  """
  def anonymous_fn_multiple_body_parameters do
    parse_file_result = fn
      {:ok, pid} -> "The file was opened successfully"
      # Match on tuple with atom :ok and pid pair
      {:error, reason} -> "The file failed to open with an error: #{:file.format_error(reason)}}"
      # Match on tuple with atom :error and reason error. :file is a built in Erlang function
    end
    IO.puts parse_file_result.(File.open("anonymousfunctions.exs"))
    IO.puts parse_file_result.(File.open("anonymousfunctionx.exs"))
  end

  @doc """
    This function illustrates how to define an anonymous function with multiple pattern matching parameters.
  If the first two are zero, return “FizzBuzz.”
  If the first is zero, return “Fizz.”
  If the second is zero, return “Buzz.” Otherwise return the third argument.
  """
  def anonymous_fn_fizzbuzz do
    fizzbuzz_fn = fn
      (0, 0, _) -> "FizzBuzz"
      (0, _, _) -> "Fizz"
      (_, 0, _) -> "Buzz"
    end
    IO.puts fizzbuzz_fn.(0, 0, 6) # Should print "FizzBuzz"
    IO.puts fizzbuzz_fn.(0, 4, 9) # Should print "Fizz"
    IO.puts fizzbuzz_fn.(5, 0, 3) # Should print "Buzz"
  end

  @doc """
    Anonymous function to concat to lists together.
  """
  def concat_anonymous_fn do
    list_concat = fn (a, b) -> Enum.concat(a, b) end
    list_concat.([:a, :b], [:c, :d]) #=> [:a, :b, :c, :d]
  end

  @doc """
    Anonymous function to sum 3 values
  """
  def sum_anonymous_fn do
    sum = fn (a, b, c) -> a + b + c end
    sum.(1, 2, 7) #=> 10
  end

  @doc """
    Anonymous function to convert a paired tuple to a list
  """
  def pair_tuple_anonymous_fn do
    pair_tuple_to_list = fn (t) -> Tuple.to_list(t) end
    pair_tuple_to_list.({1234, 5678}) #=> [ 1234, 5678 ]
  end

  @doc """
    Anonymous function which returns another anonymous function
  """
  def anonymous_fn_return_fn do
    ret_fn = fn -> fn -> "return function" end end
    ret_fn.()
    ret_fn.().()
  end

  @doc """
    Anonymous function which returns another anonymous function with a parameter
  """
  def anonymous_fn_return_fn_with_parameter do
    greeter_fn = fn name -> fn -> "Sup #{name}" end end
    tommy_greeter_fn = greeter_fn.("tommy")
    tommy_greeter_fn.()
  end

  @doc """
    Anonymous function which illustrates how a closure works, where the inner anonymous function will inherit the scope of the outer function.
  """
  def anonymous_fn_closure do
    sum_fn = fn num1 -> fn num2 -> num1 + num2 end end
    sum_two_fn = sum_fn.(2)
    sum_six_fn = sum_fn.(6)

    IO.puts "sum_two_fn = #{sum_two_fn.(5)}" # should be 2 + 5 = 7
    IO.puts "sum_six_fn = #{sum_six_fn.(4)}" # should be 6 + 4 = 10
  end

  @doc """
  Write a function prefix that takes a string. It should return a new function
  that takes a second string. When that second function is called, it will
  return a string containing the first string, a space, and the second string.
  """
  def anonymous_fn_prefix do
    prefix = fn pre -> fn suf -> "#{pre} #{suf}" end end
    mrs = prefix.("Mrs")
    IO.puts mrs.("Smith")
    IO.puts prefix.("Elixir").("Rocks")
  end

  @doc """
    We can wrap our anonymous function around an existing built-in function using & with function name and /arity
  """
  def anonymous_fn_wrapper do
    wrapper_length = &length/1
    wrapper_length.([1, 2, 3, 4]) # should call the built-in function length with arity 1
  end

  @doc """
    Shortcut anonymous function used in Enum functions
  """
  def anonymous_fn_shortcut_enum_map do
    Enum.map([1, 2, 3, 4], &(&1 + 2))
    Enum.each([5, 6, 7, 8], &IO.inspect/1)

  end



end