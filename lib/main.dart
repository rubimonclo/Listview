import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //quitamos debug
      debugShowCheckedModeBanner: false,
      initialRoute: "/listview2",
      routes: {
        "/listview1": (BuildContext context) => Listview1(),
        "/listview2": (BuildContext context) => Listview2(),
      },
      //configurar tema
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.red,
          //configurar texto
          textTheme: TextTheme(
              bodyText2: TextStyle(color: Colors.pink, fontSize: 30))),
      // A widget which will be started on application startup
    );
  }
}
