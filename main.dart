import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:dynamic_website/presentation/home_view.dart';
import 'package:dynamic_website/presentation/product_details_view.dart';
import 'package:dynamic_website/presentation/product_list_view.dart';

Future<void> init(InternetAddress ip, int port) async {
  // HtmlTemplates.pathToHtml[HtmlTemplates.home] =
  //     await File(HtmlTemplates.home).readAsString();
  // HtmlTemplates.pathToHtml[HtmlTemplates.productList] =
  //     await File(HtmlTemplates.productList).readAsString();
  // HtmlTemplates.pathToHtml[HtmlTemplates.productDetail] =
  //     await File(HtmlTemplates.productDetail).readAsString();

  // print('HTML templates loaded successfully!');

  final futures = <Future<void>>[
    HomeView.parseHtml(),
    ProductListView.parseHtml(),
    ProductDetailsView.parseHtml(),
  ];
  await Future.wait(futures);
  print('HTML templates parsed successfully!');
}

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) {
  return serve(handler, ip, port);
}
