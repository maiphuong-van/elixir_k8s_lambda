defmodule ElixirK8sLambda.Controller.V1.ElixirNodeTest do
  @moduledoc false
  use ExUnit.Case, async: false
  alias ElixirK8sLambda.Controller.V1.ElixirNode

  describe "add/1" do
    test "returns :ok" do
      event = %{}
      result = ElixirNode.add(event)
      assert result == :ok
    end
  end

  describe "modify/1" do
    test "returns :ok" do
      event = %{}
      result = ElixirNode.modify(event)
      assert result == :ok
    end
  end

  describe "delete/1" do
    test "returns :ok" do
      event = %{}
      result = ElixirNode.delete(event)
      assert result == :ok
    end
  end

  describe "reconcile/1" do
    test "returns :ok" do
      event = %{}
      result = ElixirNode.reconcile(event)
      assert result == :ok
    end
  end
end
