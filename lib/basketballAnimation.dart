import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class BasketballAnimation extends StatefulWidget {
  @override
  _BasketballAnimationState createState() => _BasketballAnimationState();
}

class _BasketballAnimationState extends State<BasketballAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0.0, end: 300.0).animate(_controller);
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
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/back.jpg'),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Container(
                margin: EdgeInsets.only(top: _animation.value),
                child: Image.asset(
                  'assets/ball.png',
                ),
              );
            },
          ),
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
