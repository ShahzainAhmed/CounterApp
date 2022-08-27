import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Counter App"),
        ),
        body: SafeArea(
          child: Center(
            child: Text(
              x.toString(),
              style: const TextStyle(fontSize: 100),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x++;
            setState(() {});
            debugPrint(x.toString());
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
