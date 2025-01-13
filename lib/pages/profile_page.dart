import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String _apiResponse = '';
  bool _isLoading = false;

  Future<void> _fetchData() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final dio = Dio();
      final response = await dio.get('http://api.manster.me/p1');

      if (response.statusCode == 200) {
        setState(() {
          _apiResponse = response.data['text'];
        });
      } else {
        setState(() {
          _apiResponse = '请求失败: ${response.statusCode}';
        });
      }
    } on DioException catch (e) {
      setState(() {
        _apiResponse = '请求出错: ${e.message}';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('这里是Profile页面'),
            const SizedBox(height: 20),
            _isLoading
                ? const CircularProgressIndicator()
                : Text(_apiResponse),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _fetchData,
              child: const Text('获取数据'),
            ),
          ],
        ),
      ),
    );
  }
}
