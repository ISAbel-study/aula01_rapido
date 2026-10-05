// Funções em Dart
void  exibirOla(){
  print("Olá");
}

void exibirMsgPosicional(String msg){
  print("Msg: $msg");
}

void exibirMsgNomeado({required String msg}){
    print("Msg: $msg");
}

// BOOL, True ou False
bool menorQ5(int numero) => numero < 5;

// BOOL, True ou False
bool par(int numero) => numero % 2 == 0;

// SOMARRR
int soma(int num1, int num2) => num1 + num2;

void main(List<String> args){
  //chamar as funções
  exibirOla();
  exibirMsgPosicional("msg1");
  exibirMsgNomeado(msg: "Msg2");

  print(menorQ5(15));
  print(par(24));
  print(soma(7, 8));

}