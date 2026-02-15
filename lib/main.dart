import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gestao_producao_chopp/features/configuracoes/data/models/configuracoes_local_model.dart';
import 'package:gestao_producao_chopp/navigate/app_navigation.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart' as date_local_data;

import 'core/theme/app_theme_light.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await date_local_data.initializeDateFormatting('pt_BR');

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Hive
  await Hive.initFlutter();
  Hive.registerAdapter(ConfiguracoesLocalModelAdapter());
  await Hive.openBox<ConfiguracoesLocalModel>('configuracoes');

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appNavigation);

    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: router,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,

      // Para DatePicker em Português
      locale: const Locale('pt', 'BR'),
      supportedLocales: const [
        Locale('pt', 'BR'),
        Locale('en', 'US'), // opcional, mas bom ter fallback
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
