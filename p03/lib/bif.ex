defmodule BIF do

  @spec min(list(integer), function) :: integer
  def min(l, f) do
    min_aux(l, :nan, f)
  end
  defp min_aux([], acc, _f) do
    acc
  end
  defp min_aux([e|l], acc, f) do
    if f.(e, acc) do
      min_aux(l, e, f)
    else
      min_aux(l, acc, f)
    end
  end

  @spec reverse(list(any)) :: list(any)
  def reverse(l) do
    reverse(l, [])
  end
  defp reverse([], acc) do
    acc
  end
  defp reverse([h|t], acc) do
    reverse(t, [h] ++ acc)
  end

  @spec seq(integer, integer) :: list(integer)
  def seq(n1, n2) do
    seq(n1, n2, [])
  end
  defp seq(n1, n1, acc) do
    acc ++ [n1]
  end
  defp seq(n1, n2, acc) when n1<n2 do
    seq(n1+1, n2, acc ++ [n1])
  end

  @spec map(list(any), function) :: list(any)
  def map(list, f) do
    map(list, f, [])
  end
  defp map([], _f, acc) do
    acc
  end
  defp map([h|t], f, acc) do
    map(t, f, acc ++ [f.(h)])
  end

  @spec reduce(list(any), any, function) :: any
  def reduce(l, acc, f) do
    reduce_aux(l, acc, f)
  end
  defp reduce_aux([], acc, _f) do
    acc
  end
  defp reduce_aux([h|t], acc, f) do
    reduce_aux(t, f.(h, acc), f)
  end

end
