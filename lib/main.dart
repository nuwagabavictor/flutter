import 'package:flutter/material.dart';
import 'dart:developer';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to flutter programming'),
          ),
          body: const MyHomePage(),
        ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

   @override
   MyHomePageState createState() => MyHomePageState();
}
class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to the app!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
           const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                log('Button clicked');
              },
              child: const Text('Click Me'),
              ),
              const SizedBox(height: 20),
              Image.network(
                "https://tinyurl.com/bdfd544u",
                width: 200,
                height: 200,
              ),
          ],
        ),
      );
  }
}
