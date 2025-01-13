import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.teal,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0), // 分割线的高度
          child: Divider(
            height: 1,
            thickness: 1,
          ),
        ),
      ),
      body: const Center(
        child: Text('This is the Home Page'),
      ),
    );
  }
}
