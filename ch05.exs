#1
list_concat = fn [a, b], [c, d] -> [a, b, c, d] end
list_concat.([:a, :b], [:c, :d]) |> IO.inspect
sum = fn a, b, c -> a + b + c end
sum.(1, 2, 3) |> IO.inspect
pair_tuple_to_list = fn {a, b} -> [a, b] end
pair_tuple_to_list.({1234, 5678}) |> IO.inspect

#2
fb = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end
fb.(0, 0, 1) |> IO.inspect
fb.(0, 2, 1) |> IO.inspect
fb.(2, 0, 1) |> IO.inspect
fb.(2, 3, 1) |> IO.inspect

#3
fb_rem = fn n -> fb.(rem(n, 3), rem(n, 5), n) end
fb_rem.(10) |> IO.inspect
fb_rem.(11) |> IO.inspect
fb_rem.(12) |> IO.inspect
fb_rem.(13) |> IO.inspect

#4
prefix = fn s -> (fn ss -> "#{s} #{ss}" end) end
prefix.("Sr.").("Aeliton") |> IO.inspect

#5
Enum.map [1, 2, 3, 4], &(&1 + 2) |> IO.inspect
Enum.each [1, 2, 3, 4], &(IO.inspect &1)
