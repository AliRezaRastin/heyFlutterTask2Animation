import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(_createScaleTransition(SecondPage()));
          },
          child: Text('Go to Second Page'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Back to First Page'),
        ),
      ),
    );
  }
}

Route _createScaleTransition(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = 0.0;
      const end = 1.0;
      const curve = Curves.easeInOut;

      var scaleAnimation = Tween<double>(begin: begin, end: end).animate(
        CurvedAnimation(
          parent: animation,
          curve: curve,
        ),
      );

      return ScaleTransition(
        scale: scaleAnimation,
        child: child,
      );
    },
  );
}
