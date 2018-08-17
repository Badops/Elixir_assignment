defmodule Firstfun do
  @doc """
  ## Examples

      iex> Firstfun.identity(4)
      4

      iex> Firstfun.identity(:a)
      :a

      iex> Firstfun.identity([:a, 3.14, {:r, 12}, []])
      [:a, 3.14, {:r, 12}, []]
  """
  def identity(x) do
    x
  end



  @doc """
  ## Examples

      iex> Firstfun.succ(3)
      4
  """
  def succ(n) do
    n + 1
  end




  @doc """
  ## Examples

      iex> Firstfun.sum2(4,5)
      9

      iex> Firstfun.sum2(-1, 0)
      -1
  """
  def sum2(x,y) do
    x + y
  end



  @doc """
  ## Examples

      iex> Firstfun.mult3(4,5,2)
      40

      iex> Firstfun.mult3(-1, 99, 0)
      0
  """
  def mult3(x,y,z) do
    x * y * z
  end
end
