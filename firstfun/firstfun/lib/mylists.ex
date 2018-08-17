defmodule Mylists do
  def nbitems([]) do
    0
  end
  def nbitems([_|t]) do
    1 + nbitems(t)
  end

  def sum([]) do
    0
  end
  def sum([h|t]) do
    h + sum(t)
  end

  def sumsplit(l) do
    {0, 0}
  end
  defp sumsplit([],a1,a2) do
    
  end
  defp sumsplit([a,b|t],a1,a2) do
    # TODO
  end
  defp sumsplit([a], a1, a2) do
    # TODO
  end

  def upper(l) do
    String.upcase(l)
  end

end

