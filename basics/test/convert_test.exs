defmodule ConvertTest do
  use ExUnit.Case, async: false

  setup_all do
    IO.puts("Before the testing of the ConvertTest test cases")

    on_exit fn ->
      IO.puts("Finished all ConvertTest test cases")
    end

    {:ok, [targetEnv: :dev, cmList: [1,2,4,8]]}
  end

  test "Test the doubleMe function" do
    assert Convert.doubleMe(2) == 4
  end

  test "Test the doubleMe function using refute()" do
    refute(Convert.doubleMe(2) == 5, "Should be false using the refuse function")
  end

  test "Test the retieval of the test context variables initialised in the setup_all function", context do
    cmValues = Map.get(context, :cmList)
    cmListSize = length(cmValues)    
    assert Map.get(context, :targetEnv) == :dev
    assert cmListSize == 4
    
    for cmValue <- cmValues, do: IO.puts("cm Value: #{cmValue}")
  end

  test "Test cm_to_inch function" do
    calculated = Convert.cm_to_inch(54.2)
    assert_in_delta calculated, 21.33, 0.05, "Result of #{calculated} is not within delta of 0.001 of 21.33"
  end

end
