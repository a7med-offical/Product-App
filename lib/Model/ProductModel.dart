class ProductModel {
  String title;
  String? description;
  String? image;
  double? price;

  ProductModel({
    required this.title,
    this.description,
    this.image,
    this.price,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      title: jsonData['title'],
      description: jsonData['description'],
      image: jsonData['thumbnail'],
      price: jsonData['price']?.toDouble(),
    );
  }
}