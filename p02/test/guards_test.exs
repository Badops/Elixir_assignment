defmodule GuardsTest do
  use ExUnit.Case
  doctest Guards

  test "switch case 1" do
    assert Guards.switch_case('abc ABC') == 'ABC abc'
  end

  test "switch case 2" do
    assert Guards.switch_case('abc1CBA') == 'ABC1cba'
  end

end
