# ExMon

  O projeto tem por base consolidar os conhecimento em Elixir e Phoenix, criando um jogo e API

| :placard: Vitrine.Dev |     |
| -------------  | --- |
| :sparkles: Nome        | **ExMon**
| :label: Tecnologias | Elixir, Phoenix (tecnologias utilizadas)
| :rocket: URL         | https://url-deploy.com.br
| :fire: Desafio     | https://url-do-desafio.com.br

<!-- Inserir imagem com a #vitrinedev ao final do link -->
![](https://raw.githubusercontent.com/alexnogueirasilva/ex_mon/main/Screenshot%20from%202023-03-02%2009-05-28.png#vitrinedev)

## Detalhes do projeto

  ● Jogo baseado em turnos onde teremos um player contra o
  computador
  ● Humano e computador começam com 100 pontos de vida
  ● A cada rodada, cada um pode fazer um dos 3 movimentos:
  ○ Ataque moderado que dá entre (18-25) de dano
  ○ Ataque variado que dá entre (10-35) de dano
  ○ Poder de cura, curando entre (18-25) de vida
  ● A cada movimento, deve ser exibido na tela o que aconteceu e a
  situação de cada jogador
  ● Se o jogador ou o computador ficarem com 0 de vida, o jogo acaba
  ○ Se alguém perder, ao exibir o resultado final, não deve ser
  exibido que algum jogador ficou com vida negativa
  ● O jogador humano poderá escolher o nome do seu personagem,
  assim como o nome de seus 3 movimentos

  ## Installation

  If [available in Hex](https://hex.pm/docs/publish), the package can be installed
  by adding `ex_mon` to your list of dependencies in `mix.exs`:

  ```elixir
  def deps do
    [
      {:ex_mon, "~> 0.1.0"}
    ]
  end
