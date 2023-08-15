import 'package:flavor_dotenv/config/flavor_type.dart';
import 'package:flutter/material.dart';

import 'config/app_config.dart';
import 'home_page.dart';

Future<Widget> initializeApp({required AppConfig appConfig}) async {
  WidgetsFlutterBinding.ensureInitialized();
  return MyApp(
    config: appConfig,
  );
}

class MyApp extends StatelessWidget {
  final AppConfig config;
  const MyApp({
    super.key,
    required this.config,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flavor dotEnv',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: (config.flavor == FlavorType.dev)
              ? Colors.red
              : (config.flavor == FlavorType.stg)
                  ? Colors.blue
                  : Colors.green,
        ),
        useMaterial3: true,
      ),
      home: HomePage(config: config),
    );
  }
}
