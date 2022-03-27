import 'package:flutter/material.dart';
import 'package:orange/provider/layout_provider.dart';
import 'package:orange/style/theme.dart';
import 'package:orange/view/screens/home/home_layout.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Orange',
        theme: lightTheme(context),
        home: const Home(),
      ),
    );
  }
}

