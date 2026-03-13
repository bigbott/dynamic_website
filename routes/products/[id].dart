import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:dynamic_website/templates/html_templates.dart';

Response onRequest(
  RequestContext context,
  String id,
) {
  return Response(
    body: HtmlTemplates.pathToHtml[HtmlTemplates.productDetail],
    headers: {
      HttpHeaders.contentTypeHeader: ContentType.html.value,
    },
  );
}
