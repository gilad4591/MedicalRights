import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Flurorouter.setupRouter();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator,
      theme: ThemeData(
        primaryColor: Colors.blueGrey[900],
        accentColor: Colors.cyan[900],
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),
          headline2: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          headline3: TextStyle(
              fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          headline4: TextStyle(fontSize: 16, color: Colors.white),
          bodyText1: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }
}
