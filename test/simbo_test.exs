defmodule SimboTest do
  use ExUnit.Case
  doctest Simbo

  test "Autore" do
    assert Simbo.author() == "Andrea Lai"
  end
end
