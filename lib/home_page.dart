import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'config/app_config.dart';

class HomePage extends StatefulWidget {
  final AppConfig config;
  const HomePage({
    super.key,
    required this.config,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String token = '';
  String url = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.config.appName),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Token : $token'),
            const SizedBox(height: 20),
            Text('URL : $url'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          token = dotenv.env['TOKEN'] ?? "";
          url = dotenv.env['URL'] ?? "";
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
