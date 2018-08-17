defmodule Anon do
  @doc """
  split_filter(list, predicate) should return {l1, l2} where:
  - l1 and l2 are lists and
  - every element in l1 satisfies the predicate
  - every element in l2 does not satisfies the predicate
  """
  def split_filter(list, predicate) do
    split_filter_aux(list, predicate, [], [])
  end

  @doc """
  split_filter_aux(l, pred, acc1, acc2) where:
  - l is the list to be split
  - pred is a predicate
  - acc1 is a list of elements that satisfy the predicate
  - acc2 is a list of elements that don't satisfy the predicate.
  It should return {l1, l2} where:
  - l1 is a list in which all elements satisfy the predicate and
  - l2 is a list in which no element satisfies the predicate.
  """
  defp split_filter_aux([], _, acc1, acc2) do
    {acc1, acc2}
  end
  defp split_filter_aux([h|t], p, acc1, acc2) do
    if p.(h) == true do
      split_filter_aux(t, p, [h] ++ acc1, acc2)
    else 
      split_filter_aux(t, p, acc1, [h] ++ acc2)
    end
  end

  @doc """
  is_equal?(i1, i2) should return true if the two parameters are equal.
  For this, we define an anonymous function bound to the variable equal?
  and we apply equal? to i1 and i2.
  """
  def is_equal?(i1, i2) do
    equal? = fn (arg1, arg2) ->
      if arg1 == arg2 do
        true
      else
        false
      end
    end

    equal?.(i1, i2)
  end

  @doc """
  is_zero?(i) should return true if the parameter is equal to zero.
  For this, we define an anonymous function bound to the variable zero?
  and we apply zero? to i.
  """
  def is_zero?(i) do
    zero? = fn(arg1) -> 
      if arg1 == 0 do
        true
      else
        false
      end
    end

    zero?.(i)
  end

  @doc """
  is_even?(i) should return true if i is even.
  For this, we define an anonymous function bound to the variable even?
  and we apply even? to i.
  """
  def is_even?(i) do
    even? = fn(arg1) -> 
      if rem(arg1, 2) == 0 do
        true
      else
        false
      end
    end

    even?.(i)
  end

  @doc """
  split_zero(l) where:
  - l is a list
  Should return {l1, l2} where:
  - l1 is a list of 0s taken from l and
  - l2 is a list of integers that are not 0 from l.
  """
  def split_zero(l) do
    split_filter(l, &Anon.is_zero?/1)
  end

  @doc """
  split_even(l) where:
  - l is a list
  Should return {l1, l2} where:
  - l1 is a list of even integers taken from l and
  - l2 is a list of odd integers from l.
  """
  def split_even(l) do
    split_filter(l, &Anon.is_even?/1)
  end
end
