import 'package:aula01/domain/conversa.dart';

class ConversaRepository {
  // BD
  List<Conversa> conversas = [
    Conversa(
      contato: "Veira", 
      ultimaMsg: "Venha para cá", 
      hora: "11:30", 
      naoLidas: 0,
    ),
    Conversa(
      contato: "Pietro", 
      ultimaMsg: "Muitas coisas no projeto", 
      hora: "17:00", 
      naoLidas: 5,
    ),
  ];

}