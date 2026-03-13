import 'dart:io';

import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:dynamic_website/data/product_service.dart';

final class ProductDetailsView {
  factory ProductDetailsView(ProductService productService) {
    _instance ??= ProductDetailsView._(productService);
    return _instance!;
  }
  ProductDetailsView._(this._productService);
  static ProductDetailsView? _instance;

  static const template = 'templates/product-details.html';
  static BeautifulSoup? doc;
  final ProductService _productService;

  static Future<void> parseHtml() async {
    doc = BeautifulSoup(await File(template).readAsString());
  }

  String getHtml(String id) {
    final product = _productService.getProduct(id)!;
    doc!.find('h2', id: 'name')!.string = product.name;
    doc!.find('span', id: 'price')!.string = product.price.toString();
    doc!.find('span', id: 'description')!.string = product.description;
    doc!.find('li', id: 'spec1')!.string = product.specs[0];
    doc!.find('li', id: 'spec2')!.string = product.specs[1];
    doc!.find('li', id: 'spec3')!.string = product.specs[2];
    doc!.find('li', id: 'spec4')!.string = product.specs[3];
    return doc.toString();
  }
}
