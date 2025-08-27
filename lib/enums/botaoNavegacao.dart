
enum BotaoNavegacaoEnum {
  home('Home', 0, 'assets/images/home_img.png', 'home'),
  introducao('Introdução', 1, 'assets/images/introducao_img.png', 'introducao'),
  romanizacao('Romanização', 2, 'assets/images/romanizacao_img.png', 'romanizacao'),
  hiraganas('HIRAGANAS', 3, 'assets/images/hiragana_img.png', 'hiraganas'),
  exercicios('Exercícios', 4, 'assets/images/exercicios_img.png', 'exercicios'),
  progresso('Progresso', 5, 'assets/images/progresso_img.png', 'progresso');

  final String nome;
  final int valor;
  final String imagem;
  final String rota;

  const BotaoNavegacaoEnum(this.nome, this.valor, this.imagem, this.rota);
}
