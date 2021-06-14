import "package:flutter/material.dart";
import "package:glimpse/presentation/ui/page/home.dart";

void main() {
  runApp(GlimpseApp());
}

class GlimpseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Glimpse App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
