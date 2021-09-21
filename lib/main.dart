import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:eman/colors.dart';
import 'package:eman/presentation/home_page/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static void setLocale(BuildContext context, Locale newLocale) async {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.changeLanguage(newLocale);
  }

  static Locale getLocal(BuildContext context) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    return state!._locale;
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = Locale(Platform.localeName.substring(1, 2));

  changeLanguage(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
          theme: ThemeData(
              primaryColor: Color(0xFF0092E0),
              primarySwatch: createMaterialColor(Color(0xFF0092E0)),
              visualDensity: VisualDensity.adaptivePlatformDensity,
              textTheme: TextTheme(
                  headline1: TextStyle(
                    color: Color(0xFF0092E0),
                    fontSize: 20.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  headline2: TextStyle(
                      color: Color(0xFF424242),
                      fontSize: 32.0.sp,
                      fontWeight: FontWeight.bold),
                  bodyText2: TextStyle(
                    fontSize: 14.0.sp,
                  ),
                  bodyText1: TextStyle(
                      color: Color(0xFF424242),
                      fontSize: 14.0.sp,
                      fontWeight: FontWeight.normal))),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: _locale,
          localeResolutionCallback: (locale, supportedLocales) {
            if (supportedLocales.contains(locale)) {
              return locale;
            }

            return supportedLocales.first;
          },
          home: HomePage()),
    );
  }
}
