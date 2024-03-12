import 'package:AstroGuru/controllers/themeController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

Map<int, Color> color = {
  50: const Color.fromRGBO(4, 138, 129, .1),
  100: const Color.fromRGBO(4, 138, 129, 1),
  200: const Color.fromRGBO(4, 138, 129, 1),
  300: const Color.fromRGBO(4, 138, 129, 1),
  400: const Color.fromRGBO(4, 138, 129, 1),
  500: const Color.fromRGBO(4, 138, 129, 1),
  600: const Color.fromRGBO(4, 138, 129, 1),
  700: const Color.fromRGBO(4, 138, 129, 1),
  800: const Color.fromRGBO(4, 138, 129, 1),
  900: const Color.fromRGBO(4, 138, 129, 1),
};
ThemeController themeController = Get.find<ThemeController>();
ThemeData nativeTheme({bool? darkModeEnabled}) {
  if (darkModeEnabled == null) {
    darkModeEnabled = false;
  }
  if (darkModeEnabled) {
    return ThemeData(
      appBarTheme: AppBarTheme(
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.transparent)),
      fontFamily: 'Roboto',
      primaryColor: Colors.black,
      primaryColorLight: Colors.black,
      primarySwatch: MaterialColor(themeController.pickColorInt, color),
      textTheme: TextTheme(
        headline1: TextStyle(color: Colors.white),
        headline2: TextStyle(color: Colors.white),
        headline3: TextStyle(color: Colors.white),
        headline4: TextStyle(color: Colors.white),
        headline5: TextStyle(color: Colors.white),
        headline6: TextStyle(color: Colors.white),
        caption: TextStyle(color: Colors.white),
        subtitle1: TextStyle(color: Colors.white),
        subtitle2: TextStyle(color: Colors.white),
        bodyText1: TextStyle(color: Colors.white),
        bodyText2: TextStyle(color: Colors.white),
      ),
      primaryTextTheme: TextTheme(
        headline1: TextStyle(color: Colors.white),
        headline2: TextStyle(color: Colors.white),
        headline3: TextStyle(color: Colors.white),
        headline4: TextStyle(color: Colors.white),
        headline5: TextStyle(color: Colors.white),
        headline6: TextStyle(color: Colors.white),
        caption: TextStyle(color: Colors.white),
        subtitle1: TextStyle(color: Colors.white),
        subtitle2: TextStyle(color: Colors.white),
        bodyText1: TextStyle(color: Colors.white),
        bodyText2: TextStyle(color: Colors.white),
      ),
    );
  } else {
    return ThemeData(
      appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: themeController.pickColor,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      fontFamily: 'Poppins',
      primaryColor: themeController.pickColor,
      primaryColorLight: themeController.pickColor,
      iconTheme: IconThemeData(color: Colors.black),
      primaryIconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(
        headline1: TextStyle(color: Color.fromARGB(255, 77, 168, 184)),
        headline2: TextStyle(color: Color.fromARGB(255, 231, 231, 231)),
        headline3: TextStyle(color: Color.fromARGB(255, 231, 231, 231)),
        headline4: TextStyle(color: Color.fromARGB(255, 231, 231, 231)),
        headline5: TextStyle(color: Color.fromARGB(255, 231, 231, 231)),
        headline6: TextStyle(color: Color.fromARGB(255, 231, 231, 231)),
        caption: TextStyle(color: Color.fromARGB(255, 231, 231, 231)),
        subtitle1: TextStyle(color: Colors.black),
        subtitle2: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        bodyText1: TextStyle(color: Color.fromARGB(255, 77, 168, 184)),
        bodyText2: TextStyle(color: Color.fromARGB(255, 58, 108, 117)),
      ),
      primaryTextTheme: TextTheme(
        headline1: TextStyle(color: Color.fromARGB(255, 231, 231, 231)),
        headline2: TextStyle(color: Color.fromARGB(255, 231, 231, 231)),
        headline3: TextStyle(color: Color.fromARGB(255, 231, 231, 231)),
        headline4: TextStyle(color: Color.fromARGB(255, 231, 231, 231)),
        headline5: TextStyle(color: Color.fromARGB(255, 201, 141, 141)),
        headline6: TextStyle(color: Colors.black),
        subtitle1: TextStyle(color: Colors.black),
        subtitle2: TextStyle(color: Color.fromARGB(255, 204, 165, 165)),
        bodyText1: TextStyle(color: Color.fromARGB(255, 231, 231, 231)),
        bodyText2: TextStyle(color: Color.fromARGB(255, 231, 231, 231)),
        caption: TextStyle(color: Color.fromARGB(255, 168, 98, 98)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(themeController.pickColor),
          foregroundColor: MaterialStateProperty.all(const Color(0xFFF5F5F5)),
        ),
      ),
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: MaterialColor(themeController.pickColorInt, color),
      ),
    );
  }
}
