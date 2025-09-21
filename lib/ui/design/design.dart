import 'package:flutter/material.dart';

class AppColors {
  static const Color gold = Color(0xFFE2BE7F);
}

class AppImages {
 // static const String ic_stats = "assets/images/ic_stats.svg";
}

class AppThemes {
  static var lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      titleTextStyle: TextStyle(
        color: AppColors.gold,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColors.gold),
    ),
    colorScheme: ColorScheme.dark(primary: AppColors.gold),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),

      bodySmall: TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.gold,
      selectedIconTheme: IconThemeData(color: Colors.white, size: 36),
      unselectedIconTheme: IconThemeData(color: Colors.black, size: 24),
      selectedLabelStyle: TextStyle(color: Colors.white),
      unselectedLabelStyle: TextStyle(color: Colors.black),
    ),
    bottomAppBarTheme: BottomAppBarTheme(color: AppColors.gold),
    scaffoldBackgroundColor: Colors.transparent,
  );
}
