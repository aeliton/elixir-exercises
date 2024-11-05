ExUnit.start()

defmodule Times do
  def double(n), do: n * 2
  def triple(n), do: n * 3
end

defmodule ModulesAndFunctions do
  use ExUnit.Case, async: true

  test "double" do
    assert Times.double(4) === 8
  end

  test "modules and functions-1" do
    assert Times.triple(4) === 12 
  end
end
