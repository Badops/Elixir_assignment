defmodule ClassicsTest do
  use ExUnit.Case
  doctest Classics

  test "factorial 1" do
    assert Classics.fact(1) == 1
  end

  test "factorial 5" do
    assert Classics.fact(5) == 120
  end

  test "fibonacci 2" do
    assert Classics.fib(2) == 1
  end

  test "fibonacci 1" do
    assert Classics.fib(1) == 1
  end

  test "fibonacci 8" do
    assert Classics.fib(8) == 21
  end

end
