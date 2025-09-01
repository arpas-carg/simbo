defmodule SimboTest do
  use ExUnit.Case
  doctest Simbo

  test "greets the world" do
    assert Simbo.hello() == :world
  end
end
