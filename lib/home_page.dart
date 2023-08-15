import 'package:flavor_dotenv/config/app_config.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final AppConfig config;
  const HomePage({
    super.key,
    required this.config,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(config.appName),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
