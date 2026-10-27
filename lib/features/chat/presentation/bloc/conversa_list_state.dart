import 'package:aula01/features/chat/domain/entities/conversa.dart';

sealed class ConversaListState {}

//Estado Carregando
class ConversaListLoad extends ConversaListState {}

//Estado Sucesso
class ConversaListSucess extends ConversaListState {
  final List<Conversa> conversas;
  //exibe conversas
  ConversaListSucess({required this.conversas});
}

//Estado Error
class ConversaListFailure extends ConversaListState {
  final String mensg;
  //exibe uma mensg de erro
  ConversaListFailure({required this.mensg});
}