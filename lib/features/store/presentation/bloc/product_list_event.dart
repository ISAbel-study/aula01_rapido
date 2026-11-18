//arquivo com os eventos
//Evento ocorre a partir de uma ação do usuário
//evento Initializa para iniciar o carregamento dos produtos

//'sealed class' significa que a classe é selada, ou seja, 
//não pode ser estendida fora do arquivo em que foi definida
sealed class ProductListEvent {}

class ProductListInitialize extends ProductListEvent {}
