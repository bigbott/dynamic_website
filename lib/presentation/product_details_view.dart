import 'dart:io';

import 'package:beautiful_soup_dart/beautiful_soup.dart';

final class ProductDetailsView {
  static const template = 'templates/product-details.html';
  static BeautifulSoup? doc;
  static Future<void> parseHtml() async {
    doc = BeautifulSoup(await File(template).readAsString());
  }

  String getHtml() {
    
    return doc.toString();
  }
}
