defmodule ImportDirective do
  @moduledoc """
    Module to illustrate how to use the import directive
  """

  def local_import() do
    # Only import the "increment" and "decrement" methods from the PipeOperator module.
    import PipeOperator, only: [increment: 1, decrement: 1]

    ans = increment 5
                    |> decrement |> decrement

    IO.puts(ans)
  end

end
