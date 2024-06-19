import 'package:app_lov2pets/models/products.dart';
import 'package:flutter/material.dart';

import '../../../Provider/favorite_provider.dart';

class DetailAppBar extends StatelessWidget {
  final Product product;

  const DetailAppBar({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(15),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          const Spacer(),
          ///////////////////////////////////

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

          ///////////////////////////////////
          const SizedBox(width: 100),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(15),
            ),
            onPressed: () {
              provider.toggleFavorite(product);
            },
            icon: Icon(
              provider.isExist(product)
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: Colors.red.shade900,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
