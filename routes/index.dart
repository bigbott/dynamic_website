import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:dynamic_website/templates/html_templates.dart';

Response onRequest(RequestContext context) {
  return Response(
    body: HtmlTemplates.pathToHtml[HtmlTemplates.home],
    headers: {
      HttpHeaders.contentTypeHeader: ContentType.html.value,
    },
  );
}
