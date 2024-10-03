import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Variabel untuk menyimpan status teks
  String _displayText = "Hello, World!";

  // Fungsi untuk mengubah teks saat tombol ditekan
  void _changeText() {
    setState(() {
      if (_displayText == "Hello, World!") {
        _displayText = "Hehehe";
      } else {
        _displayText = "Hello, World!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Teks yang akan berubah
            Text(
              _displayText,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            // Tombol untuk mengubah teks
            ElevatedButton(
              onPressed: _changeText,
              child: Text('Change Text'),
            ),
          ],
        ),
      ),
    );
  }
}
