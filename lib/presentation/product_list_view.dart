
import 'dart:io';

import 'package:beautiful_soup_dart/beautiful_soup.dart';

final class ProductListView {
  static const template = 'templates/product-list.html'; 
  static BeautifulSoup? doc;
  static Future<void> parseHtml() async{
    doc = BeautifulSoup(await File(template).readAsString());
  }

   String getHtml() => doc.toString();
}