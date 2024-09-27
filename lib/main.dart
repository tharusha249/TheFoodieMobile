import 'package:flutter/material.dart';
import 'package:thefoodie/Screen/cart.dart';
import 'package:thefoodie/Screen/home.dart';
import 'package:thefoodie/Screen/itemDetails.dart';
import 'package:thefoodie/Screen/login.dart';
import 'package:thefoodie/Screen/orderList.dart';
import 'package:thefoodie/Screen/signup.dart';
import 'package:thefoodie/Screen/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ApplicationTheme(),
      darkTheme: DarkTheme(),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const Signup(),
        '/home': (context) => const WelcomePage(),
        '/itemDetails': (context) => const Itemdetails(),
        '/cart': (context) => const CartPage(),
        '/orderList': (context) => const OrderList(),
      },
      initialRoute: '/',
     );
  }

  // ignore: non_constant_identifier_names
  ThemeData DarkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: 'Merriweather'
        ),
        bodyMedium: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.bold,
          fontFamily: 'Merriweather'
        ),
      ),
      primaryColorLight: Colors.black,
      primaryColorDark: Colors.white,
      primaryColor: Colors.blue,
      buttonTheme: const ButtonThemeData(
        buttonColor: Color.fromARGB(255, 140, 144, 26),
        textTheme: ButtonTextTheme.primary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          fixedSize: WidgetStateProperty.all<Size>(const Size(200, 50)),
          backgroundColor: WidgetStateProperty.all<Color>(
            const Color.fromARGB(255, 250, 247, 247),
          ),
          foregroundColor: WidgetStateProperty.all<Color>(
            const Color.fromARGB(255, 16, 16, 16),
          ),
          textStyle: WidgetStateProperty.all<TextStyle>(
            const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Merriweather',

            ),
          ),
          
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  ThemeData ApplicationTheme() {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          color: Colors.black,
          fontSize: 18, 
          fontWeight: FontWeight.bold,  
          fontFamily: 'Merriweather'
        ),
        bodyMedium: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.bold,
          fontFamily: 'Merriweather'
        ),
        bodySmall: TextStyle(
          color: Colors.black,
          fontSize: 10,
          fontWeight: FontWeight.bold,
          fontFamily: 'Merriweather'
        ),
      ),
      primaryColorLight: Colors.white,
      primaryColorDark: Colors.black,
      primaryColor: Colors.blue,
      buttonTheme: const ButtonThemeData(
        buttonColor: Color.fromARGB(255, 140, 144, 26),
        textTheme: ButtonTextTheme.primary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          fixedSize: WidgetStateProperty.all<Size>(const Size(150, 40)),
          backgroundColor: WidgetStateProperty.all<Color>(
            const Color.fromARGB(255, 0, 0, 0),
          ),
          foregroundColor: WidgetStateProperty.all<Color>(
            const Color.fromARGB(255, 255, 255, 255),
          ),
          textStyle: WidgetStateProperty.all<TextStyle>(
            const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Merriweather',
            ),

          ),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            width: 2,
          ),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color.fromARGB(255, 250, 250, 248),
        selectedItemColor: Color.fromARGB(255, 146, 136, 136),
        unselectedItemColor: Colors.black,
      ),


    );
  }
}
