import 'package:flutter/material.dart';
import 'package:online_store/backend_data.dart';
import 'package:online_store/product_detail.dart';
//import 'cart_screen.dart';
//import 'image_constant.dart';
import 'app_text.dart';
import 'cart_screen.dart';
//import '';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool isCartSelected = true;
  void toggleCart() {
    setState(() {
      isCartSelected = !isCartSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0f1014),
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const AppText('E - Shop',
                      fontSize: 40, fontWeight: FontWeight.bold),
                  const SizedBox(height: 10),
                  const AppText('Trending Products', fontSize: 25),
                  const SizedBox(height: 20),
                  ListView.builder(
                      itemCount: productsList.length,
                      shrinkWrap: true,
                      itemBuilder: (context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ProductDetail()),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                        productsList[index].picture ?? '',
                                        height: 140,
                                        width: 140, errorBuilder:
                                            (context, error, stackTrace) {
                                      return const AppText('No image');
                                    }),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppText(
                                            productsList[index].name ??
                                                'Product Name',
                                            fontWeight: FontWeight.bold),
                                        const SizedBox(height: 5),
                                        AppText(
                                          productsList[index].desc ??
                                              'No description',
                                          color: Colors.grey,
                                          fontSize: 17,
                                        ),
                                        const SizedBox(height: 10),
                                        Row(
                                          children: [
                                            AppText(
                                                '\$${productsList[index].price}'),
                                            const SizedBox(width: 50),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: const Color(0xff6e3fc9),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 22,
                                                      vertical: 8),
                                              child: IconButton(
                                                  onPressed: toggleCart,
                                                  icon: Icon(
                                                    isCartSelected
                                                        ? Icons
                                                            .shopping_cart_outlined
                                                        : Icons.check,
                                                    color: Colors.white,
                                                  )),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        );
                      }),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                maxRadius: 30,
                backgroundColor: Color(0xff6e3fc9),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cart()),
                      );
                    },
                    icon: Icon(
                      Icons.shopping_cart_checkout_rounded,
                      color: Colors.white,
                      size: 40,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
