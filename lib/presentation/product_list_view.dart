import 'dart:io';

import 'package:beautiful_soup_dart/beautiful_soup.dart';
import 'package:dynamic_website/data/product_service.dart';

final class ProductListView {
  factory ProductListView(ProductService productService) {
    _instance ??= ProductListView._(productService);
    return _instance!;
  }
  ProductListView._(this._productService);
  static ProductListView? _instance;

  static const template = 'templates/product-list.html';
  static late BeautifulSoup doc;
  final ProductService _productService;

  static const String productBaseUrl = 'http://localhost:8080/products/';
  static const String productDetails = '''
            <li>
                <h3 id="name"></h3>
                <p id="description"></p>
                <a id="link" href="">View Details</a>
            </li>
            ''';

  static Future<void> parseHtml() async {
    doc = BeautifulSoup(await File(template).readAsString());
  }

  String getHtml() {
    final products = _productService.getProducts();
    final liDoc = BeautifulSoup.fragment(productDetails);
    final li = liDoc.find('li')!;

    final ul = doc.find('ul', id: 'product-list');
    ul!.clear();

    for (final product in products) {
      li.find('h3', id: 'name')!.string = product.name;
      li.find('p', id: 'description')!.string = product.description;
      li.find('a', id: 'link')!.attributes['href'] =
          productBaseUrl + product.id;
      ul.append(li.clone(true));
    }
    doc.find('ul', id: 'product-list')!.replaceWith(ul);
    return doc.toString();
  }
}
