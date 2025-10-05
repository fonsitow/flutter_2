// ignore_for_file: prefer_typing_uninitialized_variables

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

}
