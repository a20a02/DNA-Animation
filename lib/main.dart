import 'package:dna_app/dna.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DNA',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DNA(index: 20, color: Colors.amberAccent),
            DNA(index: 18, color: Colors.red),
            DNA(index: 16, color: Colors.pink),
            DNA(index: 14, color: Colors.purpleAccent),
            DNA(index: 12, color: Colors.orange),
            DNA(index: 10, color: Colors.amberAccent),
            DNA(index: 8, color: Colors.red),
            DNA(index: 4, color: Colors.pink),
            DNA(index: 2, color: Colors.purpleAccent),
            DNA(index: 2, color: Colors.orange),
            DNA(index: 4, color: Colors.amberAccent),
            DNA(index: 6, color: Colors.red),
            DNA(index: 8, color: Colors.pink),
            DNA(index: 10, color: Colors.purpleAccent),
            DNA(index: 12, color: Colors.orange),
            DNA(index: 14, color: Colors.amberAccent),
            DNA(index: 16, color: Colors.red),
            DNA(index: 18, color: Colors.pink),
            DNA(index: 20, color: Colors.purpleAccent),
          ],
        ),
      ),
    );
  }
}
