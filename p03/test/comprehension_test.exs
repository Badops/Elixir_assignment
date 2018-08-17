defmodule ComprehensionTest do
  use ExUnit.Case
  doctest Comprehension

  test "square" do
    list = for _ <- 1..10, do: :rand.uniform(10)
    assert Comprehension.square(list) == Enum.map(list, &(&1*&1))
  end

  test "pyth" do
    assert [{5, 3, 4}, {5, 4, 3}, {10, 6, 8}, {10, 8, 6}]
    |> Enum.all?(fn e -> Enum.any?(Comprehension.pyth(10), &(&1==e)) end)
  end

  test "quicksort" do
    list = 1..20 |> Enum.shuffle
    assert Comprehension.qsort(list) == Enum.sort(list)
  end

  test "solve" do
    assert [{5, 8}, {8, 5}, {15, 12}, {19, 20}, {20, 19}, {20, 20}]
    |> Enum.all?(fn e -> Enum.any?(Comprehension.solve(20), &(&1==e)) end)
  end

end
