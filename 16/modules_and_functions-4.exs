##########################################
## on the terminal run:                 ##
# $ iex modules_and_functions-4.exs     ##
## or                                   ##
# $ iex                                 ##
# iex> c "modules_and_functions-4.exs"  ##
## and then:                            ##
# iex> Soma.sum(3)                      ##
# iex> 6                                ##
##########################################

defmodule Soma do
  def sum(1), do: 1
  def sum(n), do: sum(n - 1) + n
end
