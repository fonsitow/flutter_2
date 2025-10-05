import 'package:flutter/material.dart';
import 'package:my_second_app/pages/productos.dart';
import 'package:my_second_app/util/utilidades.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Util().titulo,
        backgroundColor: ColorPalet().primary,
        foregroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 32)),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: (Icon(Icons.verified_user_outlined, size: 32)),
          ),
        ],
      ),
      body: MyProducts(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.blue,
        currentIndex: 0,
        onTap: (index) {
          setState(() {
            index = 1;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'store'),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: 'user',
          ),
        ],
      ),
      drawer: Drawer(),
    );
  }
}
