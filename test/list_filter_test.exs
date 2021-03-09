defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "a: should count all odd numbers in a string list" do
      list = ["1", "2", "foo", "42", "43"]
      return = ListFilter.call(list)
      expected = 2

      assert return == expected
    end

    test "b: should count all odd numbers in a string list" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]
      return = ListFilter.call(list)
      expected = 3

      assert return == expected
    end
  end
end
