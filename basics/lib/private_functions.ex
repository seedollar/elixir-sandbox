defmodule PrivateFunctions do
  @moduledoc """
    This module illustrates how we define private functions in Elixir using the `defp` clause.
  """

  def public(val) do
    private(val)
  end

  defp private(val) do
    IO.puts("Private method invoked with value: " <> val)
  end

end
