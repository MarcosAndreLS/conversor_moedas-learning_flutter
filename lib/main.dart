import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';

const request =
    "https://api.hgbrasil.com/finance?format=json-cors&key=0cc620e8";

void main() async {
  http.Response response = await http.get(Uri.parse(request));

  print(
    jsonDecode(response.body)["results"]["currencies"]["USD"],
  );
  runApp(MaterialApp(home: Container()));
}
