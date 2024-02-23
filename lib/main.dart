import 'package:catalogue_iq/home_page.dart';
import 'package:catalogue_iq/intro_pages/Splash_Screen.dart';
import 'package:catalogue_iq/intro_pages/intro_1.dart';
import 'package:catalogue_iq/intro_pages/intro_2.dart';
import 'package:catalogue_iq/intro_pages/intro_3.dart';
import 'package:catalogue_iq/intro_pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(  MyApp());
}

class MyApp extends StatelessWidget{
     MyApp({super.key});
    final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home: const SplashScreen(),
      routes:{
        'intro_1.dart': (context)=> const IntroPage1(),
        'intro_2.dart': (context)=> const IntroPage2(),
        'intro_3.dart': (context)=> const IntroPage3(),
        'login_page'  : (context)=> const LoginPage(),
        'home_page.dart':(context) => const HomePage(),
      },
      title: " Catalogue Scoring",
      theme : ThemeData(
        fontFamily:"Roboto",
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 45, 80, 67),
          primary: const Color.fromRGBO(147,177,166,1.0),
          ),
      inputDecorationTheme: const InputDecorationTheme(
        hintStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16, 
        ),
      ),
     ),
     
    );
  }
}