import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    title: "CareRider",
    home: Scaffold(
      appBar: AppBar(
        title: Text("CareRider"),
      ),
      body: Text("Hello"),
    ),
    theme: ThemeData(primarySwatch: Colors.blueGrey),
  );
  runApp(app);
}
