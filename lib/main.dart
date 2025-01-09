import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasbeeh Counter',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0; // Reset the counter to zero
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          centerTitle: true,
          title: Text('Tasbeeh Counter'), // Fixed: Added title to AppBar
        ),
        body: Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: Image.asset(
                "assets/images/islamic_wallpaper.png",
                fit: BoxFit.cover, // Ensures the image covers the entire screen
              ),
            ),
            // Foreground Content
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "assets/images/tasbeehcounter.png",
                    ),
                    Positioned(
                      top: 116,
                      left: 140,
                      child: Text(
                        '$_counter',
                        style: TextStyle(
                          fontSize: 50, // Adjust size for better readability
                          color: Colors
                              .black, // Adjust color based on the image
                        ),
                      ),
                    ),
                    Positioned(
                      top: 218, // Adjust to fit the tasbeeh counter screen
                      left: 175,
                      child: SizedBox(
                        width: 62, // Set the width of the circle
                        height: 102, // Set the height of the circle
                        child: TextButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              CircleBorder(
                                side: BorderSide(
                                  width: 2, // Thickness of the border
                                  color: Colors.blue, // Color of the border
                                ),
                              ),
                            ),
                          ),
                          onPressed: _incrementCounter,
                          child: Text(""),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 172, // Adjust to fit the tasbeeh counter screen
                      left: 242,
                      child: SizedBox(
                        width: 25, // Set the width of the circle
                        height: 102, // Set the height of the circle
                        child: TextButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              CircleBorder(
                                side: BorderSide(
                                  width: 2, // Thickness of the border
                                  color: Colors.yellow, // Color of the border
                                ),
                              ),
                            ),
                          ),
                          onPressed: _resetCounter,
                          child: Text(""),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],)
    );
  }}