import 'package:flutter/material.dart';
import 'package:sayur_segar/ss_route_path.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sayur Segar",
      debugShowCheckedModeBanner: false,
      initialRoute: SSRoutePath.main,
      onGenerateRoute: SSRoutePath.generateRoute,
    );
  }
}