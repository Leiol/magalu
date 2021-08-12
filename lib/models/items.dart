class Items {
  final String name;
  final String restOfName;
  final String photo;
  final String price;
  final String paymentMethod;
  final String description;
  bool isFavorite;

  Items({
    required this.name,
    required this.restOfName,
    required this.photo,
    required this.price,
    required this.paymentMethod,
    required this.description,
    this.isFavorite = false,
  });
}
