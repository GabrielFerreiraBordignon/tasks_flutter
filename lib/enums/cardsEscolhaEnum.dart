enum CardsEscolhaEnum {
  hiraganas('HIRAGANAS', 'hiraganas'),
  familias('FAMÍLIAS', 'familias'),
  exercicios('EXERCÍCIOS', 'exercicios'),
  revisao('REVISÃO', 'revisao') ;

  final String titulo;
  final String rota;

  const CardsEscolhaEnum(this.titulo, this.rota);
}