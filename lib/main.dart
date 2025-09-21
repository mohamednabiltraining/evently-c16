import 'package:evently_c16/l10n/app_localizations.dart';
import 'package:evently_c16/routes.dart';
import 'package:evently_c16/ui/common/AppSharedPreferences.dart';
import 'package:evently_c16/ui/design/design.dart';
import 'package:evently_c16/ui/providers/LanguageProvider.dart';
import 'package:evently_c16/ui/providers/ThemeProvider.dart';
import 'package:evently_c16/ui/screens/onBoarding/OnBoarding.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppSharedPreferences.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => LanguageProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeProvider provider = Provider.of<ThemeProvider>(context);
    LanguageProvider languageProvider = Provider.of<LanguageProvider>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: provider.getSelectedThemeMode(),
      initialRoute: AppRoutes.OnBoardingScreen.name,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: languageProvider.getSelectedLocale(),
      routes: {
        AppRoutes.OnBoardingScreen.name: (context) => const OnBoardingScreen(),
      },
    );
  }
}
