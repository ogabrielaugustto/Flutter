import 'package:flutter/material.dart';
import 'package:flutter_pratica_app/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.black,
          textTheme: GoogleFonts.montserratTextTheme()),
      home: const LoginPage(),
    );
  }
}
