import 'package:flutter/material.dart';
import 'package:expense_tracker/expenses.dart';

var kDarkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 5, 24, 99),
);

var kLightColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 40, 133, 209),
);

void main() {
  runApp(
    MaterialApp(
      themeMode: ThemeMode.system, // Automatically switches based on system theme
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 4, 10, 125),
        ),
        cardTheme: const CardTheme(
          color: Color.fromARGB(255, 28, 40, 51),
          shadowColor: Color.fromARGB(255, 40, 58, 74),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white70),
          bodyMedium: TextStyle(color: Colors.white60),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white70,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.blue.shade700,
        ),
      ),
      theme: ThemeData(
        colorScheme: kLightColorScheme,
        scaffoldBackgroundColor: const Color.fromARGB(255, 139, 177, 204),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 4, 10, 125),
        ),
        cardTheme: const CardTheme(
          color: Color.fromARGB(255, 40, 133, 209),
          shadowColor: Color.fromARGB(255, 148, 205, 229),
          elevation: 4,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black87),
          bodyMedium: TextStyle(color: Colors.black54),
        ),
        iconTheme: const IconThemeData(
          color: Color.fromARGB(221, 236, 236, 236),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.blue.shade700,
        ),
      ),
      home: const Expenses(),
    ),
  );
}
