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
end
