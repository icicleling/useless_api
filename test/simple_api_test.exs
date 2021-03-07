defmodule UselessApiTest do
  use ExUnit.Case
  doctest UselessApi

  test "greets the world" do
    assert UselessApi.hello() == :world
  end
end
