import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';


ThemeData lightTheme(context) {
  return ThemeData(
    textTheme: GoogleFonts.poppinsTextTheme(
      Theme.of(context).textTheme,
    ).apply(bodyColor: Colors.deepOrange),
    primarySwatch: Colors.deepOrange,
    primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.grey[200],
    appBarTheme: const AppBarTheme(
      toolbarHeight: 0,
      systemOverlayStyle:  SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.white),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      color: Colors.white,
      elevation: 0,

    ),

  );
}