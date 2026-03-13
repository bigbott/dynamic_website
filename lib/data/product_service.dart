import 'package:dynamic_website/data/product.dart';

final class ProductService {
  factory ProductService() => _instance;
  ProductService._();
  static final ProductService _instance = ProductService._();

  static List<Product> db = [
    Product(
      id: '1',
      name: 'Smartphone X',
      price: 999.0,
      description: 'This smartphone features the latest processor, a 6.5-inch OLED display, and a triple-camera system. It is designed for power users who demand the best performance.',
      specs: {
        'Processor': 'Octa-core 3.0 GHz',
        'RAM': '12GB',
        'Storage': '256GB',
        'Battery': '4500mAh',
      },
    ),
    Product(
      id: '2',
      name: 'Smartphone Y',
      price: 699.0,
      description: 'Long battery life, affordable price.',
      specs: {
        'Processor': 'Quad-core 2.4 GHz',
        'RAM': '8GB',
        'Storage': '128GB',
        'Battery': '5000mAh',
      },
    ),
    Product(
      id: '3',
      name: 'Smartphone Z',
      price: 1299.0,
      description: 'The best camera on the market.',
      specs: {
        'Processor': 'Octa-core 2.8 GHz',
        'RAM': '16GB',
        'Storage': '512GB',
        'Battery': '4800mAh',
      },
    ),
  ];

  List<Product> getProducts() {
    return db;
  }

  Product? getProduct(String id) {
    for (final product in db) {
      if (product.id == id) {
        return product;
      }
    }
    return null;
  }
}
