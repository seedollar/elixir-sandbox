defmodule PinValues do
  @moduledoc """
    This module gives some illustrations about how we can use the pin operator (^) in Elixir. The pin operator makes sure that assigned variables cannot be bind once a previous value has
    already been assigned.
  """

  @doc """
    How to use the pin operator simply
  """
  def pin_operator do
    a = 1
    b = 3
    IO.puts ^a = b # Will fail on pattern match, because a is locked to value 1
  end

  def pin_value_function do
    vip = greeter_fn("Kim", "Welcome VIP")
    IO.puts vip.("Kim") # should give a nice welcome greeting
    IO.puts vip.("John") # Will give a crap greeting
  end

  defp greeter_fn(name, greeting) do
    fn
      (^name) -> "#{greeting} #{name}" # The function get's pinned to value "Kim"
      (_) -> "#Who are you??? I only know #{name}"
    end
  end

end