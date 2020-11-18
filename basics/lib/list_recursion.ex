defmodule ListRecursion do
  @moduledoc """
    This module illustrates how to use head and tail list for recursion
  """

  # anchor function
  def len([]), do: 0
  # recursive function
  def len([head | tail]), do: 1 + len(tail)

  #
  #  len([11,12,13,14,15])
  #  = 1 + len([12,13,14,15])
  #  = 1 + 1 + len([13,14,15])
  #  = 1 + 1 + 1 + len([14,15])
  #  = 1 + 1 + 1 + 1 + len([15])
  #  = 1 + 1 + 1 + 1 + 1 + len([])
  #  = 1 + 1 + 1 + 1 + 1 + 0
  #  = 5
  def len_example do
    len([11, 12, 13, 14, 15])
  end

  # anchor function
  def square([]), do: []
  # recursive function
  def square([head | tail]) do
    ans = [head * head | square(tail)]
    IO.inspect(ans)
    ans
  end

  # square([1,2,3,4,5])
  # = [1, square([2,3,4,5])]
  # = [1, 4, square([3,4,5])]
  # = [1, 4, 9, square([4,5])]
  # = [1, 4, 9, 16, square([5])]
  # = [1, 4, 9, 16, 25, square([])]
  # = [1, 4, 9, 16, 25, []]
  # = [1, 4, 9, 16, 25]
  def square_example do
    square([1, 2, 3, 4, 5])
  end

  # anchor function with anonymous function
  def map([], _func), do: []
  # recursive function  with anonymous function
  def map([head | tail], func), do: [func.(head) | map(tail, func)]

  # map([1,2,3,4], double)
  # = [2, map([2,3,4], double)]
  # = [2, 4, map([3,4], double)]
  # = [2, 4, 6, map([4], double)]
  # = [2, 4, 6, 8, map([], double)]
  # = [2, 4, 6, 8, []]
  # = [2, 4, 6, 8]
  def map_example_1() do
    double = &(&1 * 2) # anonymous double function
    map([1, 2, 3, 4], double)
  end

  # map([5,6,7,8], add_one)
  # = [6, map([6,7,8], add_one)]
  # = [6, 7, map([7,8], add_one)]
  # = [6, 7, 8, map([8], add_one)]
  # = [6, 7, 8, 9, map([], add_one)]
  # = [6, 7, 8, 9, []]
  # = [6, 7, 8, 9]
  def map_example_2() do
    add_one = &(&1 + 1)
    map([5, 6, 7, 8], add_one)
  end

  #anchor function with anonymous reduction function
  def reduce([], value, _func), do: value
  #recursive function with anonymous reduction function
  def reduce([head | tail], value, func), do: reduce(tail, func.(head, value), func)

  # reduce([1,2,3,4,5], 0, sum)
  # = reduce([1,2,3,4,5], sum(1,0), sum) = 1
  # = reduce([2,3,4,5], sum(2,1), sum) = 3
  # = reduce([3,4,5], sum(3,3), sum) = 6
  # = reduce([4,5], sum(4,6), sum) = 10
  # = reduce([5], sum(5,10), sum) = 15
  # = reduce([], 15, sum) = 15
  def reduce_example_1() do
    sum = &(&1 + &2)
    reduce([1, 2, 3, 4, 5], 0, sum)
  end

  #anchor function
  def mapsum([], _func), do: 0
  def mapsum([head | tail], func), do: func.(head) + mapsum(tail, func)

  def mapsum_example() do
    mapsum([1, 2, 3], &(&1 * &1))
  end

  #anchor function
  def max([]), do: 0
  def max([head | tail]) do
    max = max(tail)
    if max > head,
       do: max,
       else: head
  end

  def max_example() do
    max([4345, 23, 57, 52221, 73, 753])
  end

  #anchor function
  def swap([]), do: []
  def swap([a, b | tail]), do: [b, a | swap(tail)]
  def swap([_]), do: raise "Can't do swap with odd number of elements"

  def swap_example() do
    swap([6, 5, 4, 3, 2, 1])
  end

  #anchor function
  def process_77([]), do: []
  # recursive function which pattern matches in a list with the second value being equal to 77 explicitly
  def process_77([[station, 77, temp, time] | tail]), do: [[station, 77, temp, time] | process_77(tail)]
  # recursive function with matches on everything else other than the match above where 77 is the second value
  def process_77([_ | tail]), do: process_77(tail)

  def process_77_example() do
    test_data = [
      [1366225622, 26, 15, 0.433],
      [1366225622, 77, 15, 0.45],
      [1366225622, 28, 21, 0.25],
      [1366229222, 26, 19, 0.081],
      [1366229222, 77, 17, 0.343],
      [1366229222, 28, 15, 0.45],
      [1366232822, 26, 22, 0.23],
      [1366232822, 77, 21, 0.551],
      [1366232822, 28, 24, 0.056],
      [1366236422, 26, 17, 0.560]
    ]
    process_77(test_data)
  end
end
