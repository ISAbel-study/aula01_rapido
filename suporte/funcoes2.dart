//



void main(List<String> args){
  List<int> numeros= [1,2,3,4,5,6,7,8];

  //mostrar os números menores que 5
  List<int> menores = numeros.where((int elemento) => elemento > 5).toList();
  print(menores);

  // mostrar os números pares
  List<int> pares = numeros.where((int elemento) => elemento % 2 == 0).toList();
  print(pares);

  int soma = numeros.reduce((int numer1, int numer2) => numer1 + numer2);
  print(soma);
  
}