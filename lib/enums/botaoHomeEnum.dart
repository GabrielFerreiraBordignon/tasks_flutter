
enum BotaoHomeEnum {
  introducao('Introdução', 1, 'assets/images/introducao_img.png'),
  romanizacao('Romanização', 2, 'assets/images/romanizacao_img.png'),
  hiraganas('HIRAGANAS', 3, 'assets/images/hiragana_img.png'),
  exercicios('Exercícios', 4, 'assets/images/exercicios_img.png'),
  progresso('Progresso', 5, 'assets/images/progresso_img.png');

  final String nome;
  final int valor;
  final String imagem;

  const BotaoHomeEnum(this.nome, this.valor, this.imagem);
}