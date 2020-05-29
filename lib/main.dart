import 'package:flutter/material.dart';
import 'package:gesture_detector/images.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF832685),
        primaryColorLight: Color(0xFFC81379),
        accentColor: Color(0xFFFAF2FB),
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
  String title = 'Gesture Detector';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onPanEnd: (e) => print(e),
          onTapUp: (e) => print(e),
          onTapDown: (e) => print(e),
          onTapCancel: () => print('Tap Cancel'),
          onTap: () => print('On Tap'),
          onHorizontalDragUpdate: (e) => print(e),
          onHorizontalDragEnd: (e) => print(e),
          onHorizontalDragStart: (e) => print(e),
          onHorizontalDragDown: (e) => print(e),
          onHorizontalDragCancel: () => print('Drag Cancel'),
          onDoubleTap: () => print('Double Tap'),

          child: DecoratedBox(
            position: DecorationPosition.background,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.purple,
              image: DecorationImage(
                image: AssetImage(capAmerica),
              ),
            ),
            child: Center(
              widthFactor: 2.0,
              child: Text(
                'Captain America',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
