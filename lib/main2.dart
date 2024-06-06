import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material vs Cupertino',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material vs Cupertino'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Material Button:'),
            ElevatedButton(
              onPressed: () {},
              child: Text('Click Me'),
            ),
            SizedBox(height: 20),
            Text('Cupertino Button:'),
            CupertinoButton(
              onPressed: () {},
              child: Text('Click Me'),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
