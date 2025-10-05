import 'package:flutter/material.dart';
import 'package:my_second_app/models/model_productos.dart';
import 'package:my_second_app/provider/get_products.dart';
import 'package:my_second_app/util/utilidades.dart';

class MyProducts extends StatefulWidget {
  const MyProducts({super.key});

  @override
  State<MyProducts> createState() => _MyProductsState();
}

class _MyProductsState extends State<MyProducts> {
  late final Future<List<ModelProductos>> listProducts;

  @override
  void initState() {
    super.initState();

    listProducts = getProductos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: FutureBuilder(
        future: listProducts,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView(children: verProductos(snapshot.data!));
          } else if (snapshot.hasError) {
            return Center(child: Text('No hay bro'));
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
      backgroundColor: const Color.fromARGB(73, 96, 125, 139),
    );
  }

  List<Widget> verProductos(List<ModelProductos> data) {
    List<Widget> productos = [];

    for (var item in data) {
      productos.add(
        Card(
          child: ListTile(
            leading: CircleAvatar(child: Image.network(item.image)),
            title: Text(item.title),
            subtitle: Text(item.category),
            trailing: Text(item.price),
          ),
        ),
      );
    }

    return productos;
  }
}
