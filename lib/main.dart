import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oeschinen Lake Campground',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LakeDetailPage(),
    );
  }
}

class LakeDetailPage extends StatelessWidget {
  const LakeDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Oeschinen Lake Campground'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image(image: NetworkImage('https://img.manster.me/wp-content/uploads/2023/06/从aigc下载的图片.png')), // 确保你有一个名为image.png的图片在assets文件夹中
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Kandersteg, Switzerland',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      // 拨打电话
                    },
                    child: Text('CALL'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // 查看路线
                    },
                    child: Text('ROUTE'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // 分享
                    },
                    child: Text('SHARE'),
                  ),
                ],
              ),
            ),
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
    );
  }
}