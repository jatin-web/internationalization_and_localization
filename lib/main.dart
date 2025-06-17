import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:internationalization_and_localization/presentation/home_page.dart';
// TODO [Step 5]: Import the generated localization file
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

// TODO [Step 1]: Add flutter_localizations and intl dependency
// TODO [Step 2]: Set generate: true inside flutter:
// TODO [Step 3]: Create a folder named l10n inside the lib directory and create files like app_en.arb, app_es.arb for different locales respectively
// TODO [Step 4]: Create a l10n.yaml file in the root directory and mention the paths in it

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      // TODO[Step 6]: Add localization info
      // -----------------------------------
      locale: Locale(
        'es',
      ), // Locale throughout the app can be changed from here
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en'), Locale('es')],

      // -----------------------------------
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}
