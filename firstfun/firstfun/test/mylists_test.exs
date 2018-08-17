defmodule MylistsTest do
  use ExUnit.Case
  doctest Mylists

  test "nbitems empty list" do
    assert Mylists.nbitems([]) == 0
  end

  test "nbitems list of three" do
    assert Mylists.nbitems([:a,:b,:c]) == 3
  end

  test "sum empty list" do
    assert Mylists.sum([]) == 0
  end

  test "sum list of three" do
    a = :rand.uniform(100) - 50
    b = :rand.uniform(100) - 50
    c = :rand.uniform(100) - 50
    assert Mylists.sum([a,b,c]) == a+b+c
  end

  test "sumsplit empty list" do
    assert Mylists.sumsplit([]) == {0,0}
  end

  test "sumsplit list of four" do
    a = :rand.uniform(100) - 50
    b = :rand.uniform(100) - 50
    c = :rand.uniform(100) - 50
    d = :rand.uniform(100) - 50
    assert Mylists.sumsplit([a,b,c,d]) == {a+c,b+d}
  end

  test "sumsplit list of three" do
    a = :rand.uniform(100) - 50
    b = :rand.uniform(100) - 50
    c = :rand.uniform(100) - 50
    assert Mylists.sumsplit([a,b,c]) == {a+c,b}
  end

  test "upper" do
    assert Mylists.upper('aB c') == 'AB C'
  end

end
