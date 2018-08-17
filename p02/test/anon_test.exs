defmodule AnonTest do
  use ExUnit.Case
  doctest Anon

  test "splitfilter 1" do
    div_by_3? = fn n -> rem(n,3) == 0 end
    rand_list_test(div_by_3?, div_by_3?)
  end

  test "even" do
    l = 1..400 |> Enum.map(fn _ -> :rand.uniform(100) end)
    l_even = l |> Enum.map(&Anon.is_even?/1)
    l_even2 = l |> Enum.map(fn n -> rem(n,2) == 0 end)
    assert l_even == l_even2
  end

  test "zero" do
    l = 1..400 |> Enum.map(fn _ -> :rand.uniform(10) - 5 end)
    l_zero = l |> Enum.map(&Anon.is_zero?/1)
    l_zero2 = l |> Enum.map(fn n -> n == 0 end)
    assert l_zero == l_zero2
  end

  test "split_even" do
    l = 1..40 |> Enum.map(fn _ -> :rand.uniform(10) - 5 end)
    l1 = Anon.split_even(l)
    is_even? = fn n -> rem(n,2) == 0 end
    %{false: l2f, true: l2t} = l |> Enum.group_by(is_even?)
    assert l1 == {Enum.reverse(l2t), Enum.reverse(l2f)}
  end

  test "split_zero" do
    l = 1..40 |> Enum.map(fn _ -> :rand.uniform(10) - 5 end)
    l1 = Anon.split_zero(l)
    is_zero? = fn n -> n == 0 end
    %{false: l2f, true: l2t} = l |> Enum.group_by(is_zero?)
    assert l1 == {Enum.reverse(l2t), Enum.reverse(l2f)}
  end

  def rand_list_test(predicate_to_test, my_predicate) do
    l = 1..40 |> Enum.map(fn _ -> :rand.uniform(10) - 5 end)
    l1 = l |> Anon.split_filter(predicate_to_test)
    %{false: l2f, true: l2t} = l |> Enum.group_by(my_predicate)
    assert l1 == {Enum.reverse(l2t), Enum.reverse(l2f)}
  end


end
