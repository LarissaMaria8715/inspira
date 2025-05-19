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
    backgroundColor: Color(0xFF35607D),
    centerTitle: false,
    leading: const Icon(
      Icons.local_hospital_outlined,
      color: Color(0xFFF5F9FA),
    ),
    title: Text(
      'Inspira App',
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
  return ;
}