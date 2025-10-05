import 'package:flutter/material.dart';
import 'package:my_second_app/pages/productos.dart';
import 'package:my_second_app/pages/profile.dart';
import 'package:my_second_app/util/utilidades.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

var page = 0;

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    List<Widget> paginas = [
      MyProducts(),
      ProfilePage()
    ];

    return Scaffold(

      appBar: AppBar(
        title: Util().titulo,
        backgroundColor: ColorPalet().primary,
        foregroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 32)),
          Padding(
            padding: const EdgeInsets.only(right: 16, left: 8),
            child: (Icon(Icons.verified_user_outlined, size: 32)),
          ),
        ],
      ),

      body: paginas[page],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        currentIndex: page,
        onTap: (index){
          setState(() {
            page = index;
          });
        },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Store'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ]),
      drawer: Drawer(),
    );
  }
}
