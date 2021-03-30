defmodule ElixirK8sLambdaTest do
  use ExUnit.Case
  doctest ElixirK8sLambda

  test "greets the world" do
    assert ElixirK8sLambda.hello() == :world
  end
end
