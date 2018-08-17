defmodule PlayerTest do
  use ExUnit.Case
  doctest Player

  test "evens" do
    list = for _ <- 1..10, do: :rand.uniform(10)
    assert Player.evens(list) == Enum.filter(list, &(rem(&1,2)==0))
  end

  test "match" do
    p1 = [name: "Akbar", x: 200, y: 120, race: :mon_calamari]
    p2 = [name: "Chewie", x: 40, y: 0, race: :wookie]
    p3 = [name: "Han", x: 20, y: 20, race: :human]
    f = Player.match("Chewie")
    assert !f.(p1)
    assert f.(p2)
    assert !f.(p3)
  end

  test "get_player" do
    p1 = [name: "Akbar", x: 200, y: 120, race: :mon_calamari]
    p2 = [name: "Chewie", x: 40, y: 0, race: :wookie]
    p3 = [name: "Han", x: 20, y: 20, race: :human]
    l = [p1,p2,p3]
    p = l |> Enum.random
    assert Player.get_player(l, p[:name]) == p
  end

end
