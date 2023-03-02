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


  ## Installation

  If [available in Hex](https://hex.pm/docs/publish), the package can be installed
  by adding `ex_mon` to your list of dependencies in `mix.exs`:

  ```
  def deps do
    [
      {:ex_mon, "~> 0.1.0"}
    ]
  end
  ```
