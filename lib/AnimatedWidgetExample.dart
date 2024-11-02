import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: ThemeTogglePage(),
    );
  }
}

class ThemeTogglePage extends StatefulWidget {
  @override
  _ThemeTogglePageState createState() => _ThemeTogglePageState();
}

class _ThemeTogglePageState extends State<ThemeTogglePage> {
  bool _isDarkTheme = false;

  void _toggleTheme() {
    setState(() {
      _isDarkTheme = !_isDarkTheme;
    });
  }

  bool switchButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.decelerate,
        color: _isDarkTheme ? Colors.black : Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: Icon(
                  _isDarkTheme ? Icons.wb_sunny : Icons.nightlight_round,
                  key: ValueKey<bool>(_isDarkTheme),
                  size: 100,
                  color: _isDarkTheme ? Colors.white : Colors.black,
                ),
              ),
              SizedBox(height: 50),
              AnimatedToggleSwitch<bool>.dual(
                current: switchButton,
                first: false,
                second: true,
                spacing: 50,
                animationDuration: const Duration(milliseconds: 700),
                style: ToggleStyle(
                  borderColor: const Color.fromARGB(0, 100, 100, 100),
                  backgroundColor: Colors.grey,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                borderWidth: 5,
                height: 55,
                onChanged: (value) {
                  setState(() {
                    switchButton = value;
                    _toggleTheme();
                  });
                },
                styleBuilder: (value) => ToggleStyle(
                  indicatorColor: value
                      ? const Color.fromARGB(255, 0, 0, 0)
                      : const Color.fromARGB(255, 255, 255, 255),
                ),
                iconBuilder: (value) => value
                    ? Icon(
                        Icons.wb_sunny,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      )
                    : Icon(
                        Icons.dark_mode,
                        color: Colors.black,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
