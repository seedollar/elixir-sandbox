defmodule DateTimeExamples do
  @moduledoc """
    This module will illustrate some of the Date and Time functions in Elixir
  """

  @doc """
      This function show how to define a Date type within Elixir
  """
  def date_example do
    d1 = Date.new(2020, 08, 30)
  end

  @doc """
      This function show how to define a Date type using Elixir "sigils" (~D[]).
  """
  def date_sigil_example do
    d1 = ~D[2020-08-30] # Create a new date using Elixir sigil (~D[])
    d2 = ~D[2020-09-15]
    d3 = ~D[2020-09-28]
    range = Date.range(d1,d2)
    d3 in range
  end

  @doc """
      This function show how to define a Time type using Elixir "sigils" (~T[])
  """
  def time_sigil_example do
    t1 = ~T[14:20:57] # Create a new time using Elixir sigil (~T[])
    t2 = Time.new(17, 32, 24)
    t3 = ~T[14:21:00.000000]
    t1 == t2 # should be false
    t1 = Time.add(t1, 3) # add 3 seconds to time
    t1 == t3
  end

  @doc """
      This function show how to define a DateTime and NaiveDateTime (no timezone) types using Elixir "sigils" (~N[])
  """
  def datetime_sigil_example do
    naiveDt = ~N[2020-09-01 07:30:48] # Create a new naive datetime using Elixir sigil (~N[])
  end
end
