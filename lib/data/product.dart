
// lib/models/product.dart

class Product {

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.specs,
  });

   String id;
   String name;
   double price;
   String description;
   List<String> specs;

}