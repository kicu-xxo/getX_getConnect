import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:study_note/plan/plan_binding.dart';
import 'package:study_note/plan/plan_page.dart';
import 'package:study_note/sample_binding.dart';
import 'package:study_note/sample_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends HookWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialBinding: SampleBinding(),
      home: const SamplePage(),
      // home: const MyHomePage(
      //   title: 'text',
      // ),
    );
  }
}

class MyHomePage extends HookWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
          child: Container(
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.green),
        width: 20,
        height: 20,
      )),
    );
  }
}
