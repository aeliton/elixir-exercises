#1
#defmodule Times do
  #def double(n), do: n * 2
  #def triple(n), do: n * 3
#end

#2
# $ iex "ch06.exs"
# c "ch06.exs"

#3
defmodule Times do
  def double(n), do: n * 2
  def triple(n), do: n * 3
  def quadruple(n), do: n |> double |> double
end

2 |> Times.quadruple |> IO.inspect

#4 
defmodule RecurseSum do
  def sum(1), do: 1
  def sum(n), do: n + sum(n-1)
end

RecurseSum.sum(5) |> IO.inspect

#5
defmodule Gcd do
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))
end

Gcd.gcd(20, 30) |> IO.inspect

#6
defmodule Chop do
  def guess(n, f..l), do: guess(n, f..l, div(f + l, 2))

  def guess(n, f..l, half) when n < half do
    IO.puts("Is it #{half}")
    guess(n, f..half-1, div(f + half - 1, 2))
  end
  def guess(n, f..l, half) when n > half do
    IO.puts("Is it #{half}")
    guess(n, half+1..l, div(half + l + 1, 2))
  end
  def guess(n, f..l, n) do
    IO.puts("Is it #{n}")
    n
  end
end

Chop.guess(273, 1..1000) |> IO.inspect

#7
#7.1 io_lib:format("~.2f", [3/4])
#7.2 Sytem.get_env("DISPLAY")
#7.3 Path.extname("ch06.exs")
#7.4 File.cwd
#7.5 Poison.decode!(~s({"name": "Devin Torres", "age": 27}))
#7.6 System.cmd("ls", [])
