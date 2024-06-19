import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: kcontentColor,
            padding: const EdgeInsets.all(20), 
          ),
          onPressed: () {},
          icon: Image.asset(
            "imagens/Circled Menu.png",
            height: 20,
          ),
        ),

        //LOGO
         IconButton(
          style: IconButton.styleFrom(
            //backgroundColor: kcontentColor,
            padding: const EdgeInsets.all(20), 
          ),
          onPressed: () {},
          icon: Image.asset(
            "imagens/LOGO2.png",
            height: 40,
          ),
        ),

          ///////////////////

        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: kcontentColor,
            padding: const EdgeInsets.all(20), 
          ),
          onPressed: () {},
          icon: Image.asset(
            "imagens/Alarm.png",
            height: 20,
          ),
        ),
      ],
    );
  }
}
