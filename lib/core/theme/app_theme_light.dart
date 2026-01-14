import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemeLight {
  // Tema Claro Completo – Material 3 OTIMIZADO (Alto Contraste)
  static ThemeData get theme => ThemeData(
    useMaterial3: true,
    fontFamily: 'Roboto',
    colorScheme: const ColorScheme.light(
      // Cores principais
      primary: AppColors.primaryRed,
      // Destaque principal
      onPrimary: Colors.white,
      secondary: AppColors.secondaryAccent,
      // Acentos em cinza
      onSecondary: Colors.white,
      surface: AppColors.lightSurface,
      // Cards
      onSurface: AppColors.primaryDarkText,
      // Texto principal
      background: AppColors.softBackground,
      // Fundo da tela
      onBackground: AppColors.primaryDarkText,
      error: Colors.redAccent,
    ),

    scaffoldBackgroundColor: AppColors.softBackground,

    // Configuração da AppBar (Sem alteração, funciona bem)
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryRed,
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
    ),

    // Configuração dos Cards
    cardTheme: CardThemeData(
      color: AppColors.lightSurface, // Branco puro em fundo cinza claro para destaque
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(color: AppColors.inputBorder, width: 0.5), // Borda sutil
      ),
    ),

    // Configuração dos Botões Elevados (Sem alteração, o vermelho é o foco)
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryRed,
        foregroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
      ),
    ),

    // Configuração dos Botões de Texto
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primaryRed,
        textStyle: const TextStyle(fontWeight: FontWeight.w500),
      ),
    ),

    // Configuração da Tipografia (Melhor Contraste)
    textTheme: TextTheme(
      // displayLarge e headlineMedium agora usam primaryDarkText
      displayLarge: TextStyle(
        fontWeight: FontWeight.bold,
        color: AppColors.primaryDarkText,
        fontSize: 32,
      ),
      headlineMedium: TextStyle(
        fontWeight: FontWeight.w600,
        color: AppColors.primaryDarkText,
        fontSize: 24,
      ),
      bodyLarge: TextStyle(color: AppColors.primaryDarkText, fontSize: 16),
      // Principal texto (escuro)
      bodyMedium: TextStyle(color: AppColors.secondaryText, fontSize: 14),
      // Texto secundário (cinza)
      labelLarge: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
    ),

    // Configuração dos Campos de Input (Text Fields)
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.lightSurface,
      // Fundo branco dentro do campo
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.inputBorder, width: 1.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.inputBorder, width: 1.0), // Borda cinza claro
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: AppColors.primaryRed,
          width: 2.0,
        ), // Foco com borda vermelha
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.redAccent, width: 1.5),
      ),
      labelStyle: const TextStyle(color: AppColors.secondaryText),
      hintStyle: const TextStyle(color: AppColors.secondaryText),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    ),
  );
}
