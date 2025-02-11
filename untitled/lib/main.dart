import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled/core/services/dependencies_service.dart';
import 'package:untitled/features/user/presentation/pages/home_page.dart';

void main() async {
  await configureDependencies(Environment.dev);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
