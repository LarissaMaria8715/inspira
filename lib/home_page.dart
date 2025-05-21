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

buildAppBar(){
  return AppBar(
    toolbarHeight: 75,
    backgroundColor: Color(0xFF35607D),
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

buildBody(){
  return Wrap(
    alignment: WrapAlignment.center,
    spacing: 10,
    runSpacing: 15,
    children: [
      buildBotaoCard("Botão 1", Color(0xFF35607D)),
      buildBotaoCard("Botão 2", Colors.green),
      buildBotaoCard("Botão 3", Colors.deepPurple),
      buildBotaoCard("Botão 4", Colors.orange),
      buildBotaoCard("Botão 5", Colors.teal),
      buildBotaoCard("Botão 6", Colors.redAccent),
    ],
  );
}

buildBotaoCard(String texto, Color cor) {
  return Container(
    width: 220,
    height: 140,
    margin: EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: cor,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 4,
          offset: Offset(2, 2),
        ),
      ],
    ),
    child: TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: () {
        // ação do botão
      },
      child: Center(
        child: Text(
          texto,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
