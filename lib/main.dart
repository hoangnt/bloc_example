import 'package:flutter/material.dart';

import 'package:bloc_example/app.dart';
import 'package:bloc_example/config/config_loading.dart';
import 'package:bloc_example/config/flavor.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Flavor.env = Environment.prod;
  ConfigLoading.configLoading();
  runApp(MyApp());
}
