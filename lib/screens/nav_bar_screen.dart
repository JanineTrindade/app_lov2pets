//import 'dart:html';

import 'package:app_lov2pets/screens/Cart/Cart_screen.dart';
import 'package:app_lov2pets/screens/Home/home_screen.dart';
import 'package:app_lov2pets/screens/Profile/profile.dart';
import 'package:app_lov2pets/screens/constants.dart';
import 'package:app_lov2pets/screens/Favorite/favorite.dart';
import 'package:app_lov2pets/screens/list/listapet.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int cuttentIndex = 2;
  List screens = const[
              Lista(),
              Favorite(),
              HomeScreen(),
              CartScreen(),
              Profile(),
            ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            cuttentIndex = 2;
            
          });
        },
      shape: const CircleBorder(),
      backgroundColor: kprimaryColor,
  
      child: const Icon(
        Icons.home,
        color: Colors.white, 
        size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        // ignore: prefer_const_constructors
        color: Color.fromARGB(255, 252, 28, 12),
        shape: const CircularNotchedRectangle(),
        notchMargin: 10, clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  cuttentIndex = 0;
                });
              },
              icon:  Icon(
                Icons.grid_view_outlined, 
                size: 30,
                color: cuttentIndex == 0 ?kprimaryColor2 :Colors.white,
              ),
             ),

             IconButton(
              onPressed: () {
                 setState(() {
                  cuttentIndex = 1;
                });
              },
              icon:  Icon(
                Icons.favorite_border, 
                size: 30,
                color: cuttentIndex == 1 ?kprimaryColor2 :Colors.white,
              ),
             ),
               const SizedBox(width: 15,),
             IconButton(
              onPressed: () {
                 setState(() {
                  cuttentIndex = 3;
                });
              },
              icon:  Icon(
                Icons.shopping_cart_outlined, 
                size: 30,
                color: cuttentIndex == 3 ?kprimaryColor2 :Colors.white,
              ),
             ),

             IconButton(
              onPressed: () {
                 setState(() {
                  cuttentIndex = 4;
                });
              },
              icon:  Icon(
                Icons.person, //icones 
                size: 30,
                color: cuttentIndex == 4 ?kprimaryColor2 :Colors.white,
              ),
             ),
            ],
          ),
        ),
        body: screens[cuttentIndex],
    );
  }
}