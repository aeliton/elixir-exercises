ExUnit.start()

defmodule Times do
  def double(n), do: n * 2
  def triple(n), do: n * 3
  def quadruple(n), do: n |> double |> double
end

defmodule Gcd do
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))
end

defmodule BinarySearch do
  def mid(a..b), do: div(b + a, 2)

  defp guess(current, target, _..b=range, device) when current < target do
    m = mid(range)
    IO.puts(device, "Is it #{m}")
    newRange = current..b
    guess(mid(newRange), target, newRange, device)
  end

  defp guess(current, target, a.._=range, device) when current > target do
    m = mid(range)
    IO.puts(device, "Is it #{m}")
    newRange = a..current
    guess(mid(newRange), target, newRange, device)
  end

  defp guess(current, target, _, device) when target == current do
    IO.puts(device, "#{current}")
  end

  def guess(target, range, device \\ :stdio) do
    m = mid(range)
    guess(m, target, range, device)
  end
end

defmodule ModulesAndFunctions do
  use ExUnit.Case, async: true

  test "double" do
    assert Times.double(4) === 8
  end

  test "modules and functions-1" do
    assert Times.triple(4) === 12 
  end

  # modules and functions-2: run in IEx, compile the file with a) iex <file>; and b) iex> c "<file"

  test "modules and functions-3" do
    assert Times.quadruple(4) === 16 
  end

  test "modules and functions-5" do
    assert Gcd.gcd(18, 3) === 3
    assert Gcd.gcd(3, 18) === 3
    assert Gcd.gcd(3, 29) === 1
    assert Gcd.gcd(18, 27) === 9
  end

  test "modules and functions-6 preparation" do
    assert BinarySearch.mid(1..1000) === 500
  end

  test "modeules and functions" do
    {:ok, dev} = StringIO.open("")
    BinarySearch.guess(273, 1..1000, dev)
    assert StringIO.flush(dev) === "Is it 500\nIs it 250\nIs it 375\nIs it 312\nIs it 281\nIs it 265\n273\n"
  end
end
