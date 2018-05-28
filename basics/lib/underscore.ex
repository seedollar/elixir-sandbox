defmodule Underscore do
  @moduledoc """
    This module illustrates the use of the underscore (_) to treat parameters as unbounded/ignored.
  """

  def canEnter(_, age) do
    if age > 18 do
      "You may enter"
    else
      "You are not old enough"
    end
  end

end
