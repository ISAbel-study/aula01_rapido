import 'package:aula01/features/chat/domain/entities/conversa.dart';
import 'package:aula01/features/chat/infra/data/conversa_repository.dart';
import 'package:aula01/features/chat/presentation/bloc/conversa_list_event.dart';
import 'package:aula01/features/chat/presentation/bloc/conversa_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//Para gerenciar o Bloc

//Bloc<evento, estado>
class ConversaListBloc extends Bloc<ConversaListEvent, ConversaListState> {
  final ConversaRepository conversaRepo = ConversaRepository();
  
  //construtor vazio
  ConversaListBloc() : super(ConversaListLoad()) { //primeiro estado
    // quando xxx 
    on<ConversaListInitialize>((event, emit) async {
      await Future.delayed(Duration(seconds: 1));
      List<Conversa> dados = conversaRepo.conversas;

      if(dados.isNotEmpty){
        emit(ConversaListSucess(conversas: dados)); 
      } else {
        emit(ConversaListFailure(mensg: "Sem dados!"));
      }

    });
    
    on<ConversaListDuplicaConversa>((event, emit) async {
      emit(ConversaListLoad()); //
      await Future.delayed(Duration(seconds: 1));

      //conversa vem do evento
      conversaRepo.adiciona(event.conversa);
      //volta para o estado de Sucess e colocar mais uma conversa
      emit(ConversaListSucess(conversas: conversaRepo.conversas));
    });

    // evento de inicializar
    add(ConversaListInitialize());
  }
}

