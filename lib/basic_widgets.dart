import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Basict Widgets',
    home: SafeArea(child: EstruturaBaseDoApp()),
  ));
}

class EstruturaBaseDoApp extends StatelessWidget {
  const EstruturaBaseDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MyAppBar(
            title: Text(
              'Example title',
              style: Theme.of(context).primaryTextTheme.titleLarge,
            ),
          ),
          const Expanded(
            child: Center(
              child: Text('Hello, world!'),
            ),
          )
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            onPressed: null,
            tooltip: 'Navigation menu',
          ),
          Expanded(
            child: title,
          )
        ],
      ),
    );
  }
}
