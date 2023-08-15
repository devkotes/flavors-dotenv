import 'package:flutter/material.dart';

import 'app.dart';
import 'config/app_config.dart';
import 'config/flavor_type.dart';

Future main() async {
  final appConfig = AppConfig(
    appName: '[STG] Flavor dotEnv',
    flavor: FlavorType.stg,
  );

  WidgetsFlutterBinding.ensureInitialized();
  Widget app = await initializeApp(appConfig: appConfig);
  runApp(app);
}
