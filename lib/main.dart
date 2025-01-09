import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Oeschinen Lake Campground'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 图片部分
              Image.network(
                'https://img.manster.me/wp-content/uploads/2023/06/从aigc下载的图片.png', // 示例图片 URL
                height: 200,
                fit: BoxFit.cover,
              ),
              // 标题部分
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Oeschinen Lake Campground',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Kandersteg, Switzerland',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.red),
                        SizedBox(width: 4),
                        Text(
                          '41',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // 按钮部分
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButtonWithLabel(
                      icon: Icons.call,
                      label: 'CALL',
                      onPressed: () {
                        print('Call button pressed');
                      },
                    ),
                    IconButtonWithLabel(
                      icon: Icons.near_me,
                      label: 'ROUTE',
                      onPressed: () {
                        print('Route button pressed');
                      },
                    ),
                    IconButtonWithLabel(
                      icon: Icons.share,
                      label: 'SHARE',
                      onPressed: () {
                        print('Share button pressed');
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              // 描述部分
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 自定义带图标的按钮小部件
class IconButtonWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  IconButtonWithLabel({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon, color: Colors.blue),
          onPressed: onPressed,
        ),
        Text(
          label,
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
