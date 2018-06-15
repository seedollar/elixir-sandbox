defmodule TryRescueExample do

  def fall_velocity(planemo, distance) do
    try do
      gravity = case planemo do
        :earth -> 9.8
        :mars -> 3.71
        :moon -> 1.6
      end

      :math.sqrt(2 * gravity * distance)
    rescue
      ArithmeticError -> {:error, "Distance must not be negative!"}
      CaseClauseError -> {:error, "Unsupported planemo atom value: #{planemo}"}
      err in [ErlangError, RuntimeError] -> {:error, err} # You can group exceptions together to produce the same result.
    after # After is like finally in JAVA
      IO.puts("Clean up any mess after the try/rescue clause")
    end
  end
end
