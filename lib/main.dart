import 'package:flutter/material.dart';
import 'package:web_api_project/pages/home.dart';
import 'package:web_api_project/widgets/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web Api Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primaryColor: AppColors.primaryColor,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: AppColors.whiteColor,
          elevation: 0.0,
        ),
        scaffoldBackgroundColor: AppColors.backgroundColor,
      ),
      home: const Home(),
    );
  }
}
