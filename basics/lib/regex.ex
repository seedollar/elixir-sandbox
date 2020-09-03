defmodule RegexFuncs do
  @moduledoc """
    This module will give some illustrations around regular expressions
  """

  @doc """
    This function shows the basic Regex Module
  """
  def regex_module do
    a = Regex.run ~r{[aeiou]}, "caterpillar"
    IO.puts "a (run) = #{a}"
    a = Regex.scan ~r{[aeiou]}, "caterpillar"
    IO.puts "a (scan) = #{a}"
    a = Regex.split ~r{[aeiou]}, "caterpillar"
    IO.puts "a (split) = #{a}"
    a = Regex.replace ~r{[aeiou]}, "caterpillar", "*"
    IO.puts "a (replace) = #{a}"
  end

end