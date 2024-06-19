//import 'package:app_lov2pets/screens/constants.dart';
import 'package:app_lov2pets/models/products.dart';
//import 'package:app_lov2pets/screens/Home/Widget/category.dart';
import 'package:app_lov2pets/screens/Home/Widget/image_slider.dart';
import 'package:app_lov2pets/screens/Home/Widget/product_cart.dart';
import 'package:app_lov2pets/screens/Home/Widget/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
 
import '../../models/category.dart';
import 'Widget/home_app_bar.dart';
 
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
 
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
 
class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<List<Product>> selectedCategories = [
      racao,
      higiene,
      petsafe,
      diversao,
    ];
 
    return Scaffold(
      // Removido o 'const' aqui
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 35),
              // for custom appbar
              const CustomAppBar(),
              const SizedBox(height: 20),
              // for search bar
              const MySearchBAR(),
              const SizedBox(height: 20),
              ImageSlider(
                currentSlide: currentSlider,
                onChange: (value) {
                  setState(
                    () {
                      currentSlider = value;
                    },
                  );
                },
              ),
              const SizedBox(height: 40),
              // for category selection
              SizedBox(
                height: 130,
                child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  //itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        //padding: const EdgeInsets.all(5),
                        margin: EdgeInsets.only(left: 2,right: 2),
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: selectedIndex == index
                              ? Colors.grey[200]
                              : Colors.transparent,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center ,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(categories[index].image),
                                    fit: BoxFit.cover),
                              ),
                            ),
                           // const SizedBox(height: 5),
                            Text(
                              categories[index].title,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  //separatorBuilder:(context, index) =>
                  //const SizedBox(
                  // width: 50,
                  //),
                ),
              ),
 
              const Row(
                children: [
                  SizedBox(height: 50),
                  Text(
                    "OFERTAS PARA VOCÊ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
 
              ///for shopping items
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.78,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: selectedCategories[selectedIndex].length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    product: selectedCategories[selectedIndex][index],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}