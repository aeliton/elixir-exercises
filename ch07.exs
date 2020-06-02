#1
#defmodule MyList do
  #def mapsum(list, func) do
    #Enum.map(list, func) |> Enum.sum
  #end
#end

#MyList.mapsum([1, 2, 3], &(&1 * &1)) |> IO.inspect

#2
#defmodule MyList do
  #import Kernel, except: [max: 2]

  #def mapsum(list, func) do
    #Enum.map(list, func) |> Enum.sum
  #end

  #def max([h | t]), do: max(t, h)
  #def max([h| t], m) when m < h, do: max(t, h)
  #def max([_| t], m), do: max(t, m)
  #def max([], m), do: m
#end
#MyList.max([5, 1, 2, 3, 4])

#3
#defmodule MyList do
  #import Kernel, except: [max: 2]

  #def mapsum(list, func) do
    #Enum.map(list, func) |> Enum.sum
  #end

  #def max([h | t]), do: max(t, h)
  #def max([h| t], m) when m < h, do: max(t, h)
  #def max([_| t], m), do: max(t, m)
  #def max([], m), do: m

  #def caesar([], _), do: []
  #def caesar([h | t], n), do: [?a + rem(h + n - ?a, 26) | caesar(t, n)]
#end

#4
defmodule MyList do
  import Kernel, except: [max: 2]

  def mapsum(list, func) do
    Enum.map(list, func) |> Enum.sum
  end

  def max([h | t]), do: max(t, h)
  def max([h| t], m) when m < h, do: max(t, h)
  def max([_| t], m), do: max(t, m)
  def max([], m), do: m

  def caesar([], _), do: []
  def caesar([h | t], n), do: [?a + rem(h + n - ?a, 26) | caesar(t, n)]

  #def span(from, to), do: Enum.map(from..to, &(&1))
  def span(from, to) when from <= to, do: [from | span(from + 1, to)]
  def span(_,_), do: []
end

defmodule MyEnum do
  def all? do
    
  end
  
end
