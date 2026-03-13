import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:dynamic_website/data/product_service.dart';
import 'package:dynamic_website/presentation/product_details_view.dart';
import 'package:dynamic_website/templates/html_templates.dart';

Response onRequest(
  RequestContext context,
  String id,
) {
  return Response(
    body: ProductDetailsView(ProductService()).getHtml(id),
    headers: {
      HttpHeaders.contentTypeHeader: ContentType.html.value,
    },
  );
}
