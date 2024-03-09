import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/pages/homepage.dart';
import 'package:to_do_list/theme/theme.data.dart';
import 'package:to_do_list/theme/theme_provider.dart';

void main() async {
  //Initialize Hive Database For Local Storage

  await Hive.initFlutter();

  //Open a BOX

  var box = await Hive.openBox('mybox');

  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
