import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

const request =
    "https://api.hgbrasil.com/finance?format=json-cors&key=0cc620e8";

void main() async {
  runApp(MaterialApp(home: Home()));
}

Future<Map> getData() async {
  http.Response response = await http.get(Uri.parse(request));
  return jsonDecode(response.body);
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('\$ Conversor \$'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
    );
  }
}
