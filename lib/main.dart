import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project/AnimatedWidgetExample.dart';
import 'package:project/TweensAnimation.dart';
import 'package:project/animatedBuilderExample.dart';
import 'package:project/basketballAnimation.dart';
import 'package:project/firebase_options.dart';
import 'package:project/hingeAnimationExample.dart';
import 'package:project/progressBar.dart';
import 'package:project/scaleTransition.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(home: MyScreen()));
}

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BasketballAnimation(),
                      ));
                },
                child: Text('task 1 ')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProgressBarExample(),
                      ));
                },
                child: Text('task 2 ')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FirstPage(),
                      ));
                },
                child: Text('task 3 ')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CircleAnimation(),
                      ));
                },
                child: Text('task 4 ')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HingeAnimation(),
                      ));
                },
                child: Text('task 5 ')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyApp(),
                      ));
                },
                child: Text('task 6 ')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AnimatedIconexample(),
                      ));
                },
                child: Text('task 7 ')),
          ],
        ),
      ),
    );
  }
}
