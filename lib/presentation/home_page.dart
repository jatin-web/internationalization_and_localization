import 'package:flutter/material.dart';
// TODO [Step 7]: Import it
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Scaffold(
      // TODO [Step 7]: Usage
      appBar: AppBar(title: Text(localizations!.appTitle)),
      body: Center(child: Text(localizations.homeTitle("Jatin"))),
    );
  }
}
