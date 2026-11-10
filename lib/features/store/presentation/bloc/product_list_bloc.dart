/*arquivo do bloc -> gerencia os eventos, os estados
e o que vai sair na página*/
/*
  * página iniciou -> libera evento de inicializar
  * evento liberado -> estado Loading, 3 seg de espera
  * pegar lista de products no repository -> liberar estado Sucess
  * evento Sucess liberado -> retorno produtos
  * caso erro -> libera estado Failure
*/