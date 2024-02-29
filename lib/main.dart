import 'package:firs_app/ahdethDetails.dart';
import 'package:firs_app/home/home.dart';
import 'package:firs_app/provider/myProvider.dart';
import 'package:firs_app/suraDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp( ChangeNotifierProvider<myProvider>(
  create: (context)=>myProvider() ,
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<myProvider>(context);
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line

        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      locale: Locale("${provider.languageCode}"),
      debugShowCheckedModeBanner: false,
      initialRoute: "home",
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      routes: {
        "home": (context) => homeScreen(),
        suraDetails.routeName: (context) => suraDetails(),
        ahadethDetails.routeName:(context)=>ahadethDetails()
      },
    );
  }
}
