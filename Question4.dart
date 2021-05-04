import 'dart:io';
import 'dart:convert';

void main() {
  HttpClient()
      .getUrl(
        Uri.parse('www.example.com/api/get/1'),
      )
      .then(
        (request) => request.close(),
      )
      .then(
        (response) => response
            .transform(
              Utf8Decoder(),
            )
            .listen(print),
      );
}
