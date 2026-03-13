import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:dynamic_website/data/product_service.dart';
import 'package:dynamic_website/presentation/product_list_view.dart';
import 'package:dynamic_website/templates/html_templates.dart';

Response onRequest(RequestContext context) {
  return Response(
    body: ProductListView(ProductService()).getHtml(),
    headers: {
      HttpHeaders.contentTypeHeader: ContentType.html.value,
    },
  );
}
