import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app_ui/app_colors.dart';
import 'package:notes_app_ui/views/landing_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: AppColors.scaffoldBackground,
        appBarTheme: const AppBarTheme(
            centerTitle: false,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            actionsIconTheme: IconThemeData(color: AppColors.lightTextColor)),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: AppColors.buttonColor),
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
                foregroundColor: AppColors.lightTextColor)),
        tabBarTheme: const TabBarTheme(
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 3, color: AppColors.orange)),
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: AppColors.orange),
        backgroundColor: AppColors.containerBackground,
        fontFamily: GoogleFonts.poppins().fontFamily,
        brightness: Brightness.dark,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(100, 50),
            backgroundColor: AppColors.buttonColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
        ),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LandingView(),
    );
  }
}
