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

  test "pattern_matching-2" do
    assert_raise MatchError, fn ->
      [a, b, a] = [1, 2, 3]
    end
    assert_raise MatchError, fn ->
      [a, b, a] = [1, 1, 2]
    end
    assert [a, b, a] = [1, 2, 1]
  end

  test "pattern_matching-3" do
    a = 2
    assert_raise MatchError, fn ->
      [a, b, a] = [1, 2, 3]
    end
    assert_raise MatchError, fn ->
      [a, b, a] = [1, 1, 2]
    end
    assert a = 1
    assert_raise MatchError, fn ->
      ^a = 2
    end
    assert ^a = 1
    assert ^a = 2 - a
  end
end
