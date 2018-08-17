defmodule MyLists do

  def nth([h|_], 0) do
    h
  end
  def nth([_|t], n) when n>0  do
    nth(t, n-1)
  end

  def filter([]) do
    []
  end
  def filter([h|t]) when rem(h,2) == 0 do
    [h | filter(t)]
  end
  def filter([_|t]) do
    filter(t)
  end

  def subtract(l1, []) do
    l1
  end
  def subtract(l1, [h|t]) do
    subtract(l1 -- [h], t)
  end

  defp sub1([], _) do
    # TODO
  end
  defp sub1([e|t], e) do
    # TODO
  end
  defp sub1([h|t], e) do
    # TODO
  end

end
