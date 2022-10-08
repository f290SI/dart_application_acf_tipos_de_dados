import 'dart:io';

/// Função de inicializacao da aplicação, é o gatilho do projeto.

/**
 * Também é um comentario de função para documentação
 */
void main(List<String> arguments) {
  //TODO: Comentários

  // Comentario de linha única

  /*
    Comnetários de multiplas linhas
    Mais um comentario
    Mais uma linha
  */

  //TODO: Saída de dados
  print('Hello world!');

  /*
    A interpolação de String em Dart é feita utilizando-se o $ como prefixo de
    identificador desta forma $identificador ou ${expressao} desta forma ${obj.someMethod()}
    Abaixo teremos alguns exemplos.
  */

  //TODO: Declarar tipadas.
  int year = 2016;
  String bestStarWarsMovie = 'Rogue One - A Star Wars History';
  double tomatometer = 0.84;
  print(
      'Meu filme favorito é $bestStarWarsMovie ele teve $tomatometer de aprovação e foi lançado em $year');
  print('\u{1F3AF} é ótimo para criar 📱');

  //TODO: Declarar variaveis por inferencia
  var lang = 'Dart';
  var version = Platform.version;
  num androidSdk = 30.1;
  num flutterSdk = 3;

  print('\nlang is ${lang.runtimeType}');
  print('version is ${version.runtimeType}');
  print('androidSdk is ${androidSdk.runtimeType}');
  print('flutterSdk is ${flutterSdk.runtimeType}');

  //TODO: Declarar variaveis dinamicas
  dynamic value = 10;
  print('\nDynamics\nvalue: $value is ${value.runtimeType}');
  value = 10.765;
  print('\nvalue is ${value.runtimeType}');
  value = '10.765';
  print('\nvalue is ${value.runtimeType}');
  value = false;
  print('\nvalue is ${value.runtimeType}');
  value = [1, 2, 3, 4, 5];
  print('\nvalue is ${value.runtimeType}');

  value = {'lang': 'Dart', 'version': version};
  print('\nvalue is ${value.runtimeType}');

  //TODO: Declarar constantes
  /* O modificador const é para declarar valores imutáveis 
  que podem ser definidos antecipadamente pelo compilador.  
  */
  const framework = 'Flutter';

  /* O modificador final é para declarar valores imutáveis 
  que serão conhecidos apenas em tempo de execução pelo compilador.  
  Por exemplo o valor da hora atual, não se pode antecipar por que 
  será atribuido apenas na execução da aplicação.

  A declaração de constHoraAtual abaixo irá falhar. Descomente-a.
  */

  // Descomente para testar a falha do const na definição da hora local
  //const horaAtual = DateTime.now();
  final horaAtual = DateTime.now();

  //TODO: Testar metodos dos tipos em Dart. Evething is Object!

  var a = 11;
  var treinamento = 'Aceleração Flutter';
  print('$a é ímpar? ${a.isOdd ? 'SIM' : 'NÃO'}');
  print(
      '\nTreinamento: ${treinamento.toUpperCase().replaceFirst('FLUTTER', 'F.L.U.T.T.E.R')}');

  //TODO: Collections

  /*
  Uma Lista é uma estrutura de dados que é prativamente um Array, uma coleção de variáveis 
  que compartilha o mesmo nome e seus conteúdos são individualizados pelo índice de cada variável,
  ou seja o índice é que as diferenciam, são também conhecidas como variáveis indexadas unidimensionais.
  */

  print("\n\nListas");

  // Declaração tipada
  List<int> listaTipada = [6, 7, 8, 4, 3, 5];

  // Declaração por inferencia
  var listaInferencia = [6, 7, 8, 4, 3, 5];

  print(listaTipada);

  //Acesso à um elemento com refencia ao índice
  print(listaInferencia[1]);

  // Percorrer os itens de uma lista
  for (var item in listaInferencia) {
    print(item);
  }

  print('\nMaps');

  /* Maps são como arrays, porém ao invés de utilizar indices numéricos, utiliza-se chaves.
    Maps são coleções que utilizam o conceito de chave:valor para identificar seus elementos.
  */
  var mapa = {'SP': 'São Paulo', 'CE': 'Ceará', 'AM': 'Amazonas'};

  //Percorres um map em Dart, no caso abaixo, a sigla seria a chave e o estado seria o valor
  mapa.forEach((sigla, estado) => print('$sigla: $estado'));
  print('\n\n');

  // Set é uma coleção especial que não permite valores duplicados como as Listas. São super rápidas em consultas!
  var setFilmes = <String>{
    'Episodio I - A ameaça fanstasma',
    'Episodio II - O Ataque dos Clones',
    'Episodio III - A Vingança dos Sith'
  };

  // Inclusao de filme repetido ao Set
  setFilmes.add('Episodio II - O Ataque dos Clones');

  // Validação do Set de filmes: O filme duplicado não foi adicionado
  print(setFilmes);

  // Criação de lista a partir do Set de filmes
  var listFilmes = setFilmes.map((f) => f).toList();

  // Inclusao de filme repetido à Lista
  listFilmes.add('Episodio II - O Ataque dos Clones');

  // Validação da Lista de filmes: O filme duplicado foi adicionado
  print(listFilmes);

  //TODO: Nos vemos na próxima aula!!
}
