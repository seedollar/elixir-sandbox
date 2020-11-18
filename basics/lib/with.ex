defmodule WithClause do
  @moduledoc """
  This module illustrates how to use the 'with' clause
  """

  @doc """
      Illustrate how to use the 'with' clause
  """
  def with_clause do
    content = "This will stay the same"
    ans =
      with {:ok, file} = File.open("with.ex"),
           content = IO.read(file, :all),
           :ok = File.close(file) do
        content = Regex.run ~r[(content)], content # content variable is only scoped within the with block
      end
    IO.puts "ans = #{ans}"
    IO.puts "content = #{content}"
  end

  @doc """
      Illustrate how to use the 'with' clause using the <- operator to match, but provide an alternative if something goes wrong
  """
  def with_clause_handler do
    content = "This will stay the same"
    ans =
      with {:ok, file} = File.open("with.ex"),
           content = IO.read(file, :all),
           :ok = File.close(file),
           [_, p1, p2] <- Regex.run(~r/^xxx:.*?:(\d+):(\d+)/, content) do
        "p1: #{p1}, p2: #{p2}"
      end
    IO.puts "ans = #{ans}"
  end

  @doc """
      Illustrate how to use the 'with' clause and 'do:' shortcut
  """
  def with_clause_do_shortcut do
    content1 = "This will stay the same"
    content2 = "Cat in the alley"
    values1 = String.split(content1, " ")
    values2 = String.split(content2, " ")
    result = with count = Enum.count(values1), do: count * 10 # don't forget comma at the end of last parameter
    IO.puts "result = #{result}"

    result = with count1 = Enum.count(values1),
                  count2 = Enum.count(values2), do: count1 + count2 # don't forget comma at the end of last parameter
    IO.puts "result = #{result}"
  end
end