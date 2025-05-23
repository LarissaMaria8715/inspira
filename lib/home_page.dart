import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: buildAppBar(),
          body: buildBody(),
        ));
  }
}

class AppColors {
  static const Color azulPetroleo = Color(0xFF00253B);  // fontes e links
  static const Color brancoGelo = Color(0xFFF5F9FA);    // fundo geral da aplicação
  static const Color cinzaNeutro = Color(0xFF3A3E3E);   // Fundo de caixas, cards e painéis
  static const Color verdeMenta = Color(0xFF78AB89);    // Subtítulos, destaques sutis
  static const Color rosaSuave = Color(0xFFB68892);     // Títulos e elementos de destaque
}

buildAppBar(){
  return AppBar(
    toolbarHeight: 75,
    backgroundColor: Color(0xFF00253B),
    centerTitle: false,
    leading: const Icon(
      Icons.local_hospital_outlined,
      color: Color(0xFFF5F9FA),
    ),
    title: Text(
      'INSPIRA',
      style: TextStyle(
        fontSize: 30,
        color: Color(0xFFF5F9FA),
        fontWeight: FontWeight.bold,
        letterSpacing: 1.2
      ),
    ),
  );
}

buildBody() {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: Wrap(
      spacing: 16,
      runSpacing: 16,
      alignment: WrapAlignment.center,
      children: [
        buildBotaoCard("MEU PERFIL"),
        buildBotaoCard("CONFIGURAÇÕES"),
        buildBotaoCard("QUESTIONARIO"),
        buildBotaoCard("ACOMPANHAMENTO"),
        buildBotaoCard("CONTATOS"),
        buildBotaoCard("METAS"),
      ],
    ),
  );
}


buildBotaoCard(String texto) {
  return Card(
    child: Container(
      width: 200,
      height: 140,
      child: Center(child: Text(texto,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.azulPetroleo ,
      ),
      )),
    ),
  );
}
