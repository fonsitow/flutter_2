// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_typing_uninitialized_variables
import 'dart:convert';

class ModelProductos {
  final String id;
  final String title;
  final String price;
  final String description;
  final String category;
  final String image;

  ModelProductos({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'price': price,
      'description': description,
      'category': category,
      'image': image,
    };
  }

  factory ModelProductos.fromMap(Map<String, dynamic> map) {
    return ModelProductos(
      id: map['id'] as String,
      title: map['title'] as String,
      price: map['price'] as String,
      description: map['description'] as String,
      category: map['category'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelProductos.fromJson(String source) =>
      ModelProductos.fromMap(json.decode(source) as Map<String, dynamic>);
}
