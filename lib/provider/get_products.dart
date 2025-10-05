import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_second_app/models/model_productos.dart';

Future<List<ModelProductos>> getProductos() async {
  final response = await http.get(
    Uri.parse('https://fakestoreapi.com/products'),
  );

  List<ModelProductos> productos = [];

  if (response.statusCode == 200) {
    final datosJson = jsonDecode(response.body);

    for (var item in datosJson) {
      productos.add(
        ModelProductos(
          id: item['id'].toString(),
          title: item['title'].toString(),
          price: item['price'].toString(),
          description: item['description'].toString(),
          category: item['category'].toString(),
          image: item['image'].toString(),
        ),
      );
    }

    return productos;
  }else{
    return Future.error('ocurrio un error inesperado');
  }
}
