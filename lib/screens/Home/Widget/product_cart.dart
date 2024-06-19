import 'package:app_lov2pets/Provider/favorite_provider.dart';
import 'package:app_lov2pets/models/products.dart';
import 'package:app_lov2pets/screens/Detail/detail_screen.dart';
import 'package:app_lov2pets/screens/constants.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailScreen(
                    product: product,
                  )),
        );
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kcontentColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                Center(
                  child: Hero(
                    tag: product.image,
                    child: Image.asset(
                      product.image,
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    product.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Text(
                      "  \R\$${product.price}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    // Row(children: List.generate(product.co, (index) => null),)
                  ],
                )
              ],
            ),
          ),
          // for favorite icon
          Positioned(
              child: Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              height: 55,
              width: 50,
              child: GestureDetector(onTap: (){
                provider.toggleFavorite(product);
              },
              child: Icon(
                provider.isExist(product) ?
                Icons.favorite :
                Icons.favorite_border, 
                color: Colors.red.shade900,
                size: 22,),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
