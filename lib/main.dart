import 'package:bookly_app/core/utilis/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xff100B20),
        textTheme: GoogleFonts.montserratTextTheme(
            ThemeData(brightness: Brightness.dark).textTheme),
        useMaterial3: true,
      ),
    );
  }
}
