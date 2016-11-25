Template.main.onCreated ->

Template.main.events
  'click .btn': () ->
    gerador()

Template.lyrics.helpers
  lyricsGenerate: () ->
    letra = Session.get('musica')
    console.log typeof letra
    x = document.getElementById("demo");
    x.innerHTML = letra.join('<br />');

gerador = () ->
  array = [
    'Resolveu seguir, ir atrás, cara e coragem',
    'A música chama atenção da nação',
    'Se chocou o grande pássaro de aço',
    'Não tendo estrutura pra bater as asas',
    'O fim da espera, e a certeza da dor',
    'Não falta a marca da crise',
    'No lado de cá, no lado de cá da vitória',
    'No escuro, o teto é a laje',
    'Coberto de fogo da brasa da fogueira',
    'No charco molhado de papelão',
    'Eu não tenho meu pai, eu sou sozinho',
    'A lata (Sem choro não há tempo)',
    'Requebrando a consciência',
    'Na fumaça das vaidades',
    'Humilhadas envenena',
    'Como meu sangue nunca vai',
    'Vai dá prá ver',
    'Em meio a salmos',
    'Então toca a buzina',
    'Meu prato de domingo a carne assada',
    'Prato bonito ou feio minha caba na minha angustia',
    'Varejo imaginando pedaço do atacado',
    'Quadras e quadras e quadras e quadras',
    'Velhos sonhos, novos nomes',
    'O folclore é hardcore, instiga alegria',
    'Que o instinto é coletivo meu irmão',
    'Ela molhada espera o busu',
    'Ela se safa de qualquer um',
    'Ela enfrenta como fez Ogum'
  ]
  string = array.sort ->
    return .5 - Math.random();
  intro = intros()
  string.toString()

  letra = []
  x = 0
  letra.push intro[Math.floor((Math.random() * 5) + 1)]
  while x < 19
    if array[x] isnt array[x-1]
      if array[Math.floor((Math.random() * 400) + 1)]
        letra.push array[x] + " (3x)"
      else
        letra.push array[x]
    x++
  # letra.toString()
  Session.set('musica',letra)


intros = () ->
  intro = ["An an an an an eh eh eh eh eh","Uou, uou, uou, ah ah ah", "ô ô ô ô ô ô ô","Bum! Bum! Bum!","Laia laia laia laia laia"]
