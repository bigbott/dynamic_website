import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:dynamic_website/presentation/home_view.dart';

Response onRequest(RequestContext context) {
  return Response(
    body: HomeView().getHtml(),
    headers: {
      HttpHeaders.contentTypeHeader: ContentType.html.value,
    },
  );
}
