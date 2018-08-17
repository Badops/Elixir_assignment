defmodule TemperatureTest do
  use ExUnit.Case
  doctest Temperature

  test "temp case 1" do
    assert Temperature.comfortable?(19) == :comfortable
  end

  test "temp case 2" do
    assert Temperature.comfortable?(29) == :warm
  end

  test "temp case 3" do
    assert Temperature.comfortable?(39) == :hot
  end

  test "temp case 4" do
    assert Temperature.comfortable?(09) == :chill
  end

  test "temp case 5" do
    assert Temperature.comfortable?(-9) == :cold
  end

end
