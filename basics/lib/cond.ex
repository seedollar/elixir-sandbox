defmodule CondStatement do
   @moduledoc """
    This class will give illustations on how to apply the logical 'cond' expression
   """

   def determineTempLabel(degrees) do
	cond do
	  degrees < 15 -> "mild"
	  degrees > 15 and degrees < 30 -> "hot"
	  degrees > 30 and degrees < 45 -> "unbearable"
	end
   end
end
