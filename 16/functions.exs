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

  test "functions-2" do
    f = fn
      0, 0, _ -> "FizzBuzz"
      0, _, _ -> "Fizz"
      _, 0, _ -> "Buzz"
      _, _, c -> c 
    end
    assert f.(0, 0, 3) == "FizzBuzz"
    assert f.(0, 1, 3) == "Fizz"
    assert f.(1, 0, 3) == "Buzz"
    assert f.(1, 2, 3) == 3
  end

  test "functions-3" do
    f = fn
      0, 0, _ -> "FizzBuzz"
      0, _, _ -> "Fizz"
      _, 0, _ -> "Buzz"
      _, _, c -> c 
    end
    ff = &(f.(rem(&1, 3), rem(&1, 5), &1))
    assert ff.(10) === "Buzz"
    assert ff.(11) === 11
    assert ff.(12) === "Fizz"
    assert ff.(13) === 13
    assert ff.(14) === 14
    assert ff.(15) === "FizzBuzz"
    assert ff.(16) === 16
  end

  test "functions-4" do
    prefix = fn a -> &("#{a} #{&1}") end
    mrs = prefix.("Mrs")
    assert mrs.("Smith") === "Mrs Smith"
    assert prefix.("Elixir").("Rocks") === "Elixir Rocks"
  end

  test "functions-5" do
    assert Enum.map [1, 2, 3, 4], &(&1 + 2) === [3, 4, 5, 6]
    assert Enum.map [1, 2, 3, 4], &(IO.inspect &1) === [1, 2, 3, 4]
  end
end
