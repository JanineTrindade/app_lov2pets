//import 'package:app_lov2pets/screens/Home/home_screen.dart';
import 'package:app_lov2pets/screens/constants.dart';
import 'package:app_lov2pets/screens/nav_bar_screen.dart';
import 'package:flutter/material.dart';

class welcomescreen extends StatelessWidget {
  const welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 150, bottom: 150),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("imagens/telainicial.png"),
            fit: BoxFit.cover,
            )),
            child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Text("  Bem-vindo ao seu novo\njeito de cuidar do seu pet!",
                 style: TextStyle(
                  fontFamily: AutofillHints.countryCode,
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                 ),
                 ),
                 SizedBox(height: 80),
                 Material(
                  color: kcontentColor,
                  borderRadius: BorderRadius.circular(10),
                   child: InkWell(
                    //splashColor: Colors.black,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavBar(),
                      ));
                    },
                    child: Container(
                      padding: EdgeInsetsDirectional.symmetric(vertical: 15, horizontal: 40),
                      decoration:  BoxDecoration(
                        
                      ),
                      child: Text("Começar!", 
                      style: TextStyle(
                        color: Color(0xFF940D0D),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),),
                    ),
                    ),
                 )
                 
              ]
              
            ),
      ),
    );
  }
}