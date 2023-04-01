defmodule ExMonTest do
  use ExUnit.Case

  describe "create_player/4" do
    test "return a player" do
      assert "banana" == ExMon.create_player("banana", :punch, :kick, :heal)
    end
  end
end
