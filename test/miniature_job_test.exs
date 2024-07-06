defmodule MiniatureJobTest do
  use ExUnit.Case
  doctest MiniatureJob
  import Mock

  test "greets the world" do
    assert MiniatureJob.hello() == :world
  end
end
