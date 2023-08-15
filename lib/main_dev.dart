import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app.dart';
import 'config/app_config.dart';
import 'config/flavor_type.dart';

Future main() async {
  final appConfig = AppConfig(
    appName: '[DEV] Flavor dotEnv',
    flavor: FlavorType.dev,
  );

  Widget app = await initializeApp(appConfig: appConfig);
  await dotenv.load(fileName: ".dev.env");
  runApp(app);
}
