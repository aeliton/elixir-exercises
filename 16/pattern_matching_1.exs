ExUnit.start()

defmodule ProgramminElixirExercises do
  use ExUnit.Case, async: true

  test "pattern_matching-1" do
    assert a = [1, 2, 3]
    assert a = 4
    assert 4 = a
    assert_raise MatchError, fn ->
      [a, b] = [1, 2, 3]
    end
    assert a = [[1, 2, 3]]
    assert [a] = [[1, 2, 3]]
    assert_raise MatchError, fn ->
      [[a]] = [[1, 2, 3]]
    end
  end
end
