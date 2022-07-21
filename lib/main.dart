import 'package:azkar_app/screens/home_screen.dart';
import 'package:azkar_app/screens/info_screen.dart';
import 'package:azkar_app/screens/lunch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar'),
        Locale('en'),
      ],
      locale: Locale('ar'),
      debugShowCheckedModeBanner: false,
        initialRoute: '/lunch_screen',
      routes: {
        '/lunch_screen': (context) => const lunchScreen(),
        '/home_screen':(context)=> const HomeScreen(),
        '/info_screen'  :(context)=>  InfoScreen(),
      },
    );
  }
}


