defmodule ExMon.Player do
  @required_kys [:life, :moves, :name]
  @max_life 100

  @enforce_keys @required_kys
  defstruct @required_kys

  def build(name, move_rnd, move_avg, move_heal) do
    %ExMon.Player{
      life: @max_life,
      moves: %{
        move_avg: move_avg,
        move_heal: move_heal,
        move_rnd: move_rnd,
      },
      name: name
    }
  end
end
