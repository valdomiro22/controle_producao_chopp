import 'package:flutter/material.dart';

class AppTheme {
  // Definição das cores baseadas na sua imagem
  static const Color colorPrimary = Color(0xFF004E98);    // Azul Escuro
  static const Color colorSecondary = Color(0xFFFF6700);  // Laranja
  static const Color colorTertiary = Color(0xFF3A6EA5);   // Azul Aço
  static const Color colorSurface = Color(0xFFEBEBEB);    // Cinza Claro
  static const Color colorOutline = Color(0xFFC0C0C0);    // Prata/Borda

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: colorPrimary,
        primary: colorPrimary,
        secondary: colorSecondary,
        tertiary: colorTertiary,
        surface: colorSurface,
        outline: colorOutline,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
      ),

      // --- TEXT FIELDS (Inputs) ---
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: colorOutline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: colorOutline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: colorSecondary, width: 2),
        ),
        labelStyle: const TextStyle(color: colorPrimary),
        prefixIconColor: colorTertiary,
        suffixIconColor: colorTertiary,
      ),

      // --- BOTÕES ---
      // Botão Principal (Laranja para destaque)
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorSecondary,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 2,
        ),
      ),

      // Botão Secundário (Contorno em Azul)
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: colorPrimary),
          foregroundColor: colorPrimary,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),

      // --- COMPONENTES DE INTERFACE ---
      appBarTheme: const AppBarTheme(
        backgroundColor: colorPrimary,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),

      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: colorSecondary,
        foregroundColor: Colors.white,
      ),

      cardTheme: CardThemeData(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),

      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) return colorPrimary;
          return null;
        }),
      ),
    );
  }
}