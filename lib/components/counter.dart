import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key, required this.max, this.min = 0});

  final int min;
  final int max;

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void add() {
    setState(() {
      _counter++;
    });
  }

  void sub() {
    setState(() {
      _counter--;
    });
  }

  bool get isEmpty => _counter <= widget.min;
  bool get isFull => _counter >= widget.max;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    var buttonStyle = TextButton.styleFrom(
        fixedSize: Size.square(70),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        disabledBackgroundColor:Colors.blueAccent.withValues(alpha: 0.5),
        backgroundColor: Colors.blueAccent
    );

    return Column(
      children: [
        Text('$_counter', style: textTheme.bodyLarge?.copyWith(color: isFull ? Colors.red : null)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            TextButton(
              onPressed: isEmpty ? null : sub,
              style: buttonStyle,
              child: Text("-", style: textTheme.bodyMedium),
            ),
            TextButton(
              onPressed: isFull ? null : add,
              style: buttonStyle,
              child: Text("+", style: textTheme.bodyMedium),
            )
          ],
        )
      ],
    );
  }
}
