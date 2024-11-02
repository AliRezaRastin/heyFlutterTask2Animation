import 'package:flutter/material.dart';

class ProgressBarExample extends StatefulWidget {
  @override
  _ProgressBarExampleState createState() => _ProgressBarExampleState();
}

class _ProgressBarExampleState extends State<ProgressBarExample> {
  double _progress = 0.0;

  void _startProgress() {
    setState(() {
      _progress = 0.0;
    });

    Future.delayed(Duration(milliseconds: 100), () {
      for (int i = 0; i <= 100; i++) {
        Future.delayed(Duration(milliseconds: i * 30), () {
          setState(() {
            _progress = i / 100;
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Color startColor = const Color.fromARGB(255, 102, 219, 6);
    Color endColor = Colors.red;

    Color _containerColor = Color.lerp(startColor, endColor, _progress)!;

    return Center(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _containerColor,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10),
              child: LinearProgressIndicator(
                color: Colors.lightBlue,
                value: _progress,
                minHeight: 20,
              ),
            ),
            SizedBox(height: 20),
            Text(
              '${(_progress * 100).ceil()} %',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _startProgress,
              child: Text('Start Progress'),
            ),
          ],
        ),
      ),
    );
  }
}
