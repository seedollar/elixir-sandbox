defmodule DefaultParameters do
  @moduledoc """
    This module illustrates how you can set a default parameter to a named function if no value is given for that parameter.
  """

  def default_params(name \\ "Gigi") do
    IO.puts name
  end

end
