defmodule ExMonTest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  alias ExMon.Player

  describe "create_player/4" do
    test "return a player" do
      expected_response = %Player{
        life: 100,
        moves: %{move_avg: :kick, move_heal: :heal, move_rnd: :punch},
        name: "banana"
      }

      assert expected_response == ExMon.create_player("banana", :punch, :kick, :heal)
    end
  end

  describe "start_game/1" do
    test "when the gane is started, return a message" do
      player = Player.build("Alex", :punch, :kick, :heal)

      message =
        capture_io(fn ->
          assert ExMon.start_game(player) == :ok
        end)

        assert message =~ "The game is started"
        assert message =~ "status: :started"
        assert message =~ "turn: :player"
    end
  end

  describe "make_move/1" do
    setup do
      player = Player.build("Alex", :punch, :kick, :heal)

      capture_io(fn ->
        ExMon.start_game(player)
      end)
      :ok
    end

    test "when the move is valid, do the move and the comuter makes a move" do
      message =
        capture_io(fn ->
          ExMon.make_move(:punch)
        end)

        assert message =~ "The Player attacked the computer"
        assert message =~ "It's computer turn."
        assert message =~ "It's player turn."
        assert message =~ "status: :continue"
        assert message =~ "turn: :computer"
    end

    test "when the move is invalid, returns an error message" do
      message =
        capture_io(fn ->
          ExMon.make_move(:banana)
        end)

        assert message =~ "Invalid move: banana"
    end
  end
end
