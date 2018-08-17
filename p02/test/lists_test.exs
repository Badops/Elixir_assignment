defmodule ListsTest do
  use ExUnit.Case
  doctest MyLists

  test "nth 1" do
    assert MyLists.nth([1,2,3,4,5],0) == 1
  end

  test "nth 2" do
    assert MyLists.nth([1,2,3,4,5],1) == 2
  end

  test "filter 1" do
    assert MyLists.filter([1,2,3,4,5]) == [2,4]
  end

  test "filter 2" do
    assert MyLists.filter([2,2,3,4,5]) == [2,2,4]
  end

  test "subtract 1" do
    assert [2,2,3,4] |> MyLists.subtract([2,3]) == [2,4]
  end

  test "subtract 2" do
    assert [2,2,3,4] |> MyLists.subtract([2]) == [2,3,4]
  end

end
