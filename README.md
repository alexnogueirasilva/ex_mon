# ExMon

O projeto tem por base consolidar os conhecimento em Elixir e Phoenix, criando um jogo e API

| :placard: Vitrine.Dev |                                          |
|-----------------------|------------------------------------------|
| :sparkles: Nome       | **ExMon**                                |
| :label: Tecnologias   | Elixir, Phoenix (tecnologias utilizadas) |
| :rocket: URL          | https://url-deploy.com.br                |
| :fire: Desafio        | https://url-do-desafio.com.br            |

<!-- Inserir imagem com a #vitrinedev ao final do link -->
![](https://raw.githubusercontent.com/alexnogueirasilva/ex_mon/main/Screenshot%20from%202023-03-02%2009-05-28.png#vitrinedev)

## Detalhes do projeto

* Turn-based game where we have a player against the computer
* Human and computer start with 100 life points each
* Each round, each player can make one of 3 moves:
    * Moderate attack dealing between (18-25) damage
    * Varied attack dealing between (10-35) damage
    * Healing power, restoring between (18-25) health
* After each move, the screen should display what happened and the situation of each player
* If either player or the computer reaches 0 health points, the game ends
    * If someone loses, the final result should not display any player with negative health points
* The human player can choose the name of their character, as well as the name of their 3 moves.

### Create player

  ```elixir
      play = ExMon.create_player("Alex", :chute, :soco, :cura)
      %ExMon.Player{
        life: 100,
        moves: %{move_avg: :soco, move_heal: :cura, move_rnd: :chute},
        name: "Alex"
      }
      
      ExMon.start_game(play)
      
       ==== The game is started! ====
      %{
        computer: %ExMon.Player{
          life: 100,
          moves: %{move_avg: :kick, move_heal: :heal, move_rnd: :punch},
          name: "Robotinik"
        },
        player: %ExMon.Player{
          life: 100,
          moves: %{move_avg: :soco, move_heal: :cura, move_rnd: :chute},
          name: "Alex"
        },
        status: :started,
        turn: :player
      }
      ---------------------------------
      :ok
      
      ExMon.make_move(:cura)
      
      ExMon.make_move(:cura)

 ==== The player healled itself to 100 life points ====

 ==== It's computer turn. ====
%{computer: %ExMon.Player{
    life: 100,
    moves: %{move_avg: :kick, move_heal: :heal, move_rnd: :punch},
    name: "Robotinik"
  },
  player: %ExMon.Player{
    life: 100,
    moves: %{move_avg: :soco, move_heal: :cura, move_rnd: :chute},
    name: "Alex"
  },
  status: :continue,
  turn: :computer
}
---------------------------------

 ==== The computer healled itself to 100 life points ====

 ==== It's player turn. ====
%{computer: %ExMon.Player{
    life: 100,
    moves: %{move_avg: :kick, move_heal: :heal, move_rnd: :punch},
    name: "Robotinik"
  },
  player: %ExMon.Player{
    life: 100,
    moves: %{move_avg: :soco, move_heal: :cura, move_rnd: :chute},
    name: "Alex"
  },
  status: :continue,
  turn: :player
}
---------------------------------
:ok


   ```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ex_mon` to your list of dependencies in `mix.exs`:

  ```elixir
    def deps do
      [
        {:credo, "~> 1.7", only: [:dev, :test], runtime: false}
      ]
    end
  ```
