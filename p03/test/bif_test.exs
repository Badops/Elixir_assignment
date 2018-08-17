defmodule BIFTest do
  use ExUnit.Case
  doctest BIF

  test "min" do
    l = for _ <- 1..10, do: :rand.uniform(100)
    assert BIF.min(l,&</2) == Enum.min(l)
  end

  test "reverse" do
    l = 1..10 |> Enum.shuffle
    assert BIF.reverse(l) == Enum.reverse(l)
  end

  test "seq" do
    min = :rand.uniform(10)
    max = :rand.uniform(100) + 10
    assert BIF.seq(min,max) == Enum.map(min..max, &(&1))
  end

  test "map 1" do
    l = 1..10 |> Enum.shuffle
    square = &(&1*&1)
    assert BIF.map(l,square) == Enum.map(l,square)
  end

  test "map 2" do
    l = 1..10 |> Enum.shuffle
    cube = &(&1*&1*&1)
    assert BIF.map(l,cube) == Enum.map(l,cube)
  end

  test "reduce 1" do
    l = 1..10 |> Enum.shuffle
    cube = &(&1*&1*&2)
    assert BIF.reduce(l,1,cube) == Enum.reduce(l,1,cube)
  end

  test "reduce 2" do
    l = 4..20 |> Enum.shuffle
    cube = &(&1+&1-&2)
    assert BIF.reduce(l,12,cube) == Enum.reduce(l,12,cube)
  end

end
