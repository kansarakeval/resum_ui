import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resum_ui/util/app_route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.deepOrange,
      systemNavigationBarColor: Colors.deepOrange));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    debugShowCheckedModeBanner: false,
    routes: screen_routes,
  ));
}
