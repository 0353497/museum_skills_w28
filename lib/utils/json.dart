import 'dart:convert';

import 'package:flutter/services.dart';

class JsonReader {
  static Future<List> readJson() async {
    final String json = await rootBundle.loadString("media-files/data/artworks.json");
    final List data = jsonDecode(json);
    return data;
  }
}