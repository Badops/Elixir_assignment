defmodule MergeSortTest do
  use ExUnit.Case
  doctest MergeSort

  test "split 1" do
    assert MergeSort.split([1,2,3,4]) == {[3,1],[4,2]}
  end

  test "split 2" do
    assert MergeSort.split([1,2,3,4,5]) == {[5,3,1],[4,2]}
  end

  test "split 3" do
    assert MergeSort.split([2,2,3,4]) == {[3,2],[4,2]}
  end

  test "split 4" do
    assert MergeSort.split([4,3,1,2]) == {[1,4],[2,3]}
  end

  test "merge 1" do
    assert MergeSort.merge([1,3,4],[2,4,5]) == [1,2,3,4,4,5]
  end

  test "merge 2" do
    assert MergeSort.merge('efrt', 'fo') == 'effort'
  end

  test "merge 3" do
    assert MergeSort.merge('act', 'cen') == 'accent'
  end

  test "merge_sort" do
    l = 1..20 |> Enum.shuffle
    assert MergeSort.merge_sort(l) == Enum.sort(l)
  end

end
