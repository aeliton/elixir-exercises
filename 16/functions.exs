ExUnit.start()


defmodule Functions do
  use ExUnit.Case, async: true

  test "functions-1" do
    list_concat = &(&1 ++ &2)
    assert list_concat.([:a, :b], [:c, :d]) === [:a, :b, :c, :d]

    sum = &(&1 + &2 + &3)
    assert sum.(1, 2, 3) === 6

    pair_tuple_to_list = fn {a, b} -> [a, b] end
    assert pair_tuple_to_list.({ 1234, 5678 }) === [ 1234, 5678 ]
  end
end
