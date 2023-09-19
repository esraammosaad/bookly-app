import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly_app/core/utilis/navigation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Navigation.router,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xff100B20),
        textTheme: GoogleFonts.montserratTextTheme(
        ThemeData(brightness: Brightness.dark).textTheme

        ),


        useMaterial3: true,
      ),


    );
  }
}

