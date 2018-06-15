defmodule DropTest do
  use ExUnit.Case, async: true
  doctest Drop 

  test "Zero distance gives zero velocity" do
    assert Drop.fall_velocity_test(:earth, 0) == 0
  end

  test "Mars calculation correct" do
    assert Drop.fall_velocity_test(:mars, 10) == :math.sqrt(2 * 3.41 * 10)
  end

  test "ArithmeticError raised" do
    assert_raise ArithmeticError, fn ->
      Drop.fall_velocity_test(:earth, -19)
    end
  end

  test "CaseClauseError raised" do
    assert_raise CaseClauseError, fn -> 
      Drop.fall_velocity_test(:pluto, 10)
    end
  end

end
