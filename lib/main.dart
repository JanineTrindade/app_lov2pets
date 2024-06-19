import 'package:app_lov2pets/Provider/cart_provider.dart';
import 'package:app_lov2pets/Provider/favorite_provider.dart';
import 'package:app_lov2pets/screens/welcomesreen.dart';
//import 'package:app_lov2pets/screens/Favorite/favorite.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'screens/nav_bar_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => CartProvider()),
            ChangeNotifierProvider(create: (_) => FavoriteProvider()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              textTheme: GoogleFonts.mulishTextTheme(),
            ),
            home: const welcomescreen(),
          ));
}

@override
Widget build(BuildContext context) {
  // Implementação do Bottom Navigation Bar
  return Container();
}
