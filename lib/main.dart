import 'package:finder_job_app/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blue,
          secondaryHeaderColor: Colors.green,
          highlightColor: const Color.fromARGB(255, 116, 116, 116),
          textTheme: TextTheme(
              headline1: const TextStyle(
                  fontSize: 46,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
              headline2: (const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.green)),
              headline3: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              headline4: TextStyle(
                  color: Color.fromARGB(255, 29, 29, 29), fontSize: 20),
              bodyText1: const TextStyle(fontSize: 20, color: Colors.grey),
              bodyText2: TextStyle(fontSize: 16, color: Colors.blue.shade600)),
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.green)),
    );
  }
}
