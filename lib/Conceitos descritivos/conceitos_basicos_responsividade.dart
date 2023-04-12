///
/// --------------- CONCEITOS ---------------
/// 
/// -> Polegadas: É o tamanho da tela na diagonal
/// -> Resolução: Resolução de tela é a quantidade de pixels que compõem a imagem exibida em um dispositivo de exibição.
///               Em resumo, a resolução de tela refere-se ao número de pixels que compõem uma imagem na tela de um dispositivo de exibição,
///               e afeta a qualidade e a nitidez da imagem exibida. Resoluções mais altas geralmente resultam em imagens mais detalhadas e nítidas.
/// 
/// -> Pixel físico: Para formarmos um pixel, temos a junção de 4 blocos de luz.
/// -> Densidade de pixel: Nada mais é a quantidade de pixel que temos para uma determinda região da tela.
///                        Quanto maior é o pixel, menos densidade temos e a resolução fica horrivel.
///                        Quanto menor é o pixel, mais nitida e detalhada é a imagem.
/// 
/// -> Pixel lógico: Para cada 1 cm de tela, deve haver 38 pixels logicos na teoria.
///                  Na pratica, o fabricante de cada modelo de celular coloca a informação do DevicePixelRatio no dispositivo,
///                  após isso para encontrarmos os pixel logico, 
///                  pegamos o pixel fisico / devicePixelRatio = assim encontramos quantos pixel lógico temos no dispositivo em questão.
/// 
/// -> NO FLUTTER SEMPRE TRABALHAMOS COM PIXEL LÓGICOS, POIS FICA DE FÁCIL ENTENDIMENTO AO APLICAR A RESPONSIVIDADE EM TELAS DIFERENTES.
/// -> TODOS OS CONCEITOS ABORDADOS A SEGUIR, NÃO É NECESSARIAMENTE USADO PARA A TELA INTEIRA, 
///    MAS SIM PARA O ESPAÇO DISPONIVEL DENTRO DA ARVORE DE WIDGETS.
/// 
/// 
/// --------------- RESPONSIVIDADE COM MEDIA QUERY ---------------
/// 
/// MediaQuery.of(context).size.width  -> Quando usamos o MediaQuery com width temos a largura em pixel logico.
/// MediaQuery.of(context).size.height -> Quando usamos o MediaQuery com height temos a altura em pixel logico.
///                                       No caso da altura, ele vai apenas considerar aonde podemos usar o app, 
///                                       desconsiderando então a tabbar aonde fica os botões proprios do celular.
/// 
/// MediaQuery.of(context).devicePixelRatio -> Podemos acessar o DevicePixelRatio do dispositivo a partir desta função usando o MediaQuery.
/// 
/// MediaQuery.of(context).padding. (top, botton) -> Com esta função conseguimos tirar as dimensões que vem no dipositivo,
///                                                  para assim nao ter perigo de dar overflow.
/// 
/// final orientation = MediaQuery.of(context).orientation -> podemos utilizar o Orientation atraves do MediaQuery,
///                                                           para sabermos sem qual orientação o dispositivo esta.
/// 
/// --------------- RESPONSIVIDADE COM EXPANDED ---------------
/// 
/// -> Quando usamos o Widget Expanded dentro de uma column() ou uma row(), 
///    ele vai expandir o conteudo que esta dentro do expanded o máximo possivel.
/// 
/// -> Exemplo: Isso serve tanto para Column() e Row() quando o Expanded estiver como filho:
///             Se dentro de um Expanded tiver um Container, não adiantara em nada colocar uma altura ou lagura fixa para o mesmo,
///             pois o Expanded ira prevalecer e ocupar espaço total disponivel.
/// 
/// -> Dentro do Expanded temos o parametro Flex,
///    o qual serve para definirmos proporções entre os elementos do Expanded, 
///    seja dentro de uma Column() ou Row().
///    Podemos pensar no Flex, em porcentagem para ficar mais facil de entender. 
///    Exemplo: Dentro de uma Row() tem 100%, dai possuimos dois filhos dentro desta Row(),
///             cada filho eu quero que ocupe 50%, 
///             então definimos em cada Expanded no parametro flex que deve ocupar 50, assim,
///             cada filho dentro da Row() ocupara metade do espaço.  
/// 
/// --------------- RESPONSIVIDADE COM FLEXIBLE ---------------
/// 
/// -> No FLEXIBLE possuimos um parametro chamado Fit, 
///    no qual passamos: 
///    FlexFit.tight -> Essse terá o mesmo comportamento do Expanded;
///    ou
///    FlexFit.loose -> Ele considera o tamanho que o filho quer ter,
///                     em device menor ele não deixara passar o tamanho permito,
///                     mesmo se o filho querer o tamanho maior,
///                     e em device maior, ele vai considerar o tamanho que o filho solicita.
/// 
/// -> No FLEXIBLE tambem possuimos o parametro flex, que pode ser usado igual no Expanded,
///    a unica diferença que quando usamos FlexFit.loose, no FLEXIBLE e passamos uma altura para algum elemento,
///    os outros elementos tera a proporção em relação ao elemento que foi passado a altura.
/// 
/// --------------- RESPONSIVIDADE COM WRAP ---------------
/// 
/// -> Ao inves de usar uma Row() para colocar componentes, ele pode ser substituido pelo WRAP,
///    que quando o dispositivo for menor e não couber tantos elementos na mesma Row(),
///    o WRAP ele automaticamente manda esses elementos para a linha de baixo.
/// 
/// -> No WRAP temos alguns parametros interessantes que pode ser usados:
/// 
/// -> Spacing: Serve para colocar um espaçamento de largura entre eles.
/// -> RunSpacing: Serve para colocar um espaçamento de altura entre eles.
/// 
/// --------------- RESPONSIVIDADE COM POSICIONAMENTO ---------------
/// 
/// -> O ALIGN: Ele é usado para posicionar o widget em algum canto que voce especificar,
///             entretanto ele são posiçoes especificas e extremas.
///             Ele possui o parametro alignment que podemos 
///             passar para usar no espaço disponivel dentro da arvore de Widgets:
/// 
///             - topLeft, topCenter, topRight;
///             - centerLeft, center, centerRight;
///             - bottomLeft, bottomCenter, bottomRight;
/// 
///             Exemplo: alignment: Alignment.topCenter,
///  
///             Podemos tambem usar o alignment para posicionar o widget 
///             filho em qualquer posiçao na tela usando o eixo X e Y:
///             Exemplo: alignment: Alignment(-0.75 , -0.75),
/// 
/// -> O POSITIONED: Atraves dele não precisamos definir relativamente a posição dos widgets,
///                  pode ser definido absolutamente, ou seja, dentro do POSITIONED temos os parametros
///                  top, right, left e bottom, que podemos atravez deles definir aonde queremos posicionar 
///                  o nosso widget com referencia a esses parametros.
///                  Ele lida com dimensoes em pixel logico.
/// 
/// --------------- RESPONSIVIDADE COM ORIENTAÇÃO DE TELA ---------------
/// 
/// -> O ORIENTATION BUILDER: Ele serve para monitorar a orientação da tela, 
///                           podemos passar nela a orientação da tela e buildarmos os widgets.
/// 
///                           Exemplo:
///                           OrientationBuilder(
///                             builder: (context, orientation) {
///                               return Conatiner(
///                                 child: orientation == Orientation.portrait
///                                   ? classA()
///                                   : classB()
///                           )});
/// 
/// 
///  --------------- RESPONSIVIDADE COM FITTEDBOX ---------------
/// 
/// -> O FITTEDBOX: Ele é bem usado para dimensionar os widgets que precisam ocupar um espaço
///                 seja ele pequeno ou grande, sem perder a qualidade dos pixels.
///                 Possui um parametro chamado fit, nele podemos encontrar:
/// 
///                 BoxFit.contain -> serve para o elemento caiba perfeitamente dentro do espaço disponivel sem cotar ele.
///                 BoxFit.cover   -> ele aumenta o elemento para que cubra todo o espaço, sem deixar sobrar nada.
///                 BoxFit.fill    -> ele alarga o elemento, mas não segue a proporção, então acaba distorcendo o elemento.
///                 BoxFit.none    ->  o elemento é exibido em seu tamanho original
///                 BoxFit.scaleDown   -> especificar como o elemento deve ser dimensionado quando é maior do que o espaço disponível.
///                 BoxFit.fitHeight   -> prioriza a altura do elemento, para que fique no espaço disponivel.
///                 BoxFit.fitWidht    -> prioriza a largura do elemento, para que fique no espaço disponivel.
///                 
/// 
