#5
defmodule MyEnum do
  def all?([]), do: true

  def all?([h | t]) do
    if h do
      all?(t)
    else
      false
    end
  end

  def all?([], _), do: true

  def all?([h | t], f) do
    if f.(h) do
      all?(t)
    else
      false
    end
  end

  def each([], _), do: :ok
  def each([h], f) do
    f.(h)
    :ok
  end
  def each([h | t], f) do
    f.(h)
    each(t, f)
    :ok
  end

  def filter([], f), do: []
  def filter([h | t], f) do
    if f.(h) do
      [ h | filter(t, f) ]
    else
      filter(t, f)
    end
  end

  # TODO split
  # TODO take

end
