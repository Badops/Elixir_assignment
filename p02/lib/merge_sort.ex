defmodule MergeSort do

  @doc """
  split([1,2,3,4]) should return {[3,1],[4,2]}
  split([1,2,3,4,5]) should return {[5,3,1],[4,2]}
  """
  def split(l) do
    split_aux(l, [], [])
  end
  defp split_aux([], acc1, acc2) do
    {acc1, acc2}
  end
  defp split_aux([e], acc1, acc2) do
    split_aux([], [e] ++ acc1, acc2)
  end
  defp split_aux([e1,e2|t], acc1, acc2) do
    split_aux(t, [e1] ++ acc1, [e2] ++ acc2)
  end

  @doc """
  merge([1,2,4,6],[1,3,5]) should return [1,1,2,3,4,5,6]
  """
  def merge(l1, l2) do
    merge_aux(l1, l2, [])
  end
  defp merge_aux(l1, [], acc) do
    acc ++ l1
  end
  defp merge_aux([], l2, acc) do
    acc ++ l2
  end
  defp merge_aux([e1|_]=l1, [e2|t2], acc) when e1>e2 do
    merge_aux(l1, t2, acc ++ [e2])
  end
  defp merge_aux([e1|t1], l2, acc) do
    merge_aux(t1, l2, acc ++ [e1])
  end

  @doc """
  merge_sort(l) where l is a list of unsorted integers returns the sorted list
  """
  def merge_sort([]) do
    []
  end
  def merge_sort([e]) do
    [e]
  end
  def merge_sort(l) do
    {l1, l2} = split(l)
    merge(Enum.sort(l1), Enum.sort(l2))
  end
end

