import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app.dart';
import 'config/app_config.dart';
import 'config/flavor_type.dart';

Future main() async {
  final appConfig = AppConfig(
    appName: 'Flavor dotEnv',
    flavor: FlavorType.prod,
  );

  Widget app = await initializeApp(appConfig: appConfig);
  await dotenv.load(fileName: ".env");
  runApp(app);
}
