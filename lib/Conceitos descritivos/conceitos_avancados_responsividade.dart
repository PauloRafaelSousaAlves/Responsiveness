///
/// --------------- CONCEITOS AVANÇADOS ---------------
/// 
/// --------------- CONCEITOS RENDERIZAÇÃO & CONSTRAINTS ---------------
/// 
/// -> RENDERIZAÇÃO: Possui basicamente 3 etapas principais, sendo elas:
/// 
/// 1. Constraints go down (Constraints vão para o filho)-> O pai fala para o filho, 
///    qual é o tamanho minimo e tamanho maximo que cada filho podera ocupar na tela.
/// 
/// 2. Sizes go up (Tamanhos vão para o pai)-> Depois do filho ter escolhido o tamanho que ele quer ocupar,
///    ele passa esses tamanho para o pai.
/// 
/// 3. Parent sets position (O pai escolhe a posição)-> Por ultimo, com o tamanho ja escolhido pelo filho, 
///    o pai vai escolher a posição que o filho ira ocupar, dentro daquele primeiro espaço
///    que o pai tinha disponibilizado para o filho.
///  
/// -> REGRAS <-
/// 
/// 1. O WIDGET NÃO PODE TER O TAMANHO QUE QUISER;
/// 2. O WIDGET NÃO SABE E NÃO DECIDE A SUA POSIÇÃO NA TELA;
/// 3. É IMPOSSIVEL SABR O TAMANHO E POSIÇÃO DE UM WIDGET SEM OLHAR A ARVORE COMO UM TODO;