defmodule Patfun do
  def sum2tuple({a,b}) do
    a + b
  end

  def head([h|_]) do
    h
  end

  def tail([_|t]) do
    t
  end

  def area({:circle, radius}) do
    3.142 * (radius * radius) 
  end
  def area({:rectangle, l, w}) do
    l * w
  end
end
