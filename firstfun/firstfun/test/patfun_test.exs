defmodule PatfunTest do
  use ExUnit.Case
  doctest Patfun

  test "sum2tuple" do
    a = :rand.uniform(100) - 50
    b = :rand.uniform(100) - 50
    assert Patfun.sum2tuple({a,b}) == a+b
  end

  test "head - list of one" do
    a = :rand.uniform(100) - 50
    assert Patfun.head([a]) == a
  end

  test "head - list of two" do
    a = :rand.uniform(100) - 50
    assert Patfun.head([a,2]) == a
  end

  test "tail - list of two" do
    a = :rand.uniform(100) - 50
    assert Patfun.tail([1,a]) == [a]
  end

  test "tail - list of one" do
    assert Patfun.tail([1]) == []
  end

  test "area circle" do
    assert Patfun.area({:circle, 1}) == :math.pi()
  end

  test "area rectangle" do
    a = :rand.uniform(100)
    b = :rand.uniform(100)
    assert Patfun.area({:rectangle, a, b}) == a*b
  end

end

