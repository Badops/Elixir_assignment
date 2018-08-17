defmodule Comprehension do

  @spec square(list(integer)) :: list(integer)
  def square(l) do
    for n <- l, do: n * n
  end

  @spec pyth(integer) :: list(tuple)
  def pyth(n) do
    # for i < 1..4 do
    #   x = y*y + z*z
    #   y = x*x - z*z 
    #   z = x*x - y*y

    #   {x, y, z}
    # end
  end

  @spec qsort(list(integer)) :: list(integer)
  def qsort([]) do
    []
  end
  def qsort([h|l]) do
    smallerlist = for x <- l, x < h, do: x
    largerlist = for x <- l, x >= h, do: x
    qsort(smallerlist) ++ [h] ++ qsort(largerlist)
  end

  @spec solve(integer) :: list(tuple)
  def solve(d) do
    # for n <- 1..6 do
    #   # (n*n + y*y) - ((2(d-1)ny)/d) - n - y = 0 
    # end
  end

  @spec perm(list(any)) :: list(list(any))
  def perm([]) do
    # TODO
  end
  def perm(l) do
    # TODO
  end


end

