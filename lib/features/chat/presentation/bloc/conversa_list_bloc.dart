import 'package:aula01/features/chat/presentation/bloc/conversa_list_event.dart';
import 'package:aula01/features/chat/presentation/bloc/conversa_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//Bloc<evento, estado>
class ConversaListBloc extends Bloc<ConversaListEvent, ConversaListState> {
  //construtor vazio
  ConversaListBloc() : super(ConversaListLoad()) { //primeiro estado
    //
  }
}

