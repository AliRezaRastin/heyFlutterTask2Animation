import 'package:flutter/material.dart';

class AnimatedIconexample extends StatefulWidget {
  @override
  _AnimatedIconexampleState createState() => _AnimatedIconexampleState();
}

class _AnimatedIconexampleState extends State<AnimatedIconexample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isRotated = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  void _toggleIcon() {
    setState(() {
      _isRotated = !_isRotated;
    });

    if (_controller.isCompleted) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RotationTransition(
              turns: Tween<double>(
                      begin: _isRotated ? 0.5 : 0, end: _isRotated ? 1.0 : 0.5)
                  .animate(_controller),
              child: Icon(
                _animation.value < 0.5
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                size: 40,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleIcon,
              child: Text('Toggle Icon'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
