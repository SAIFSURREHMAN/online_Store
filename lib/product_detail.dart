import 'package:flutter/material.dart';

import 'first_screen.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool isCartSelected = true;

  void toggleCart() {
    setState(() {
      isCartSelected = !isCartSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0f1014),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FirstScreen()),
                  );
                },
                icon: Icon(Icons.arrow_back_ios_new_sharp),
                color: Colors.white,
                iconSize: 30,
              ),
              Image.network(
                'https://media1.popsugar-assets.com/files/thumbor/tt8rICQYLd_R6B8YWVQPrVWSd3Y/fit-in/728xorig/filters:format_auto-!!-:strip_icc-!!-/2020/10/20/719/n/46843612/c2f332635f8f0d413eba39.70679882_/i/iphone-12-pacific-blue-color.png',
                width: 200,
              ),
              Text(
                'Iphone 12 Pro',
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Text(
                'Apple Iphone 12th Generation',
                style: TextStyle(fontSize: 26, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Apple iPhone 12 Pro was officially released on October 13, 2020. The phone is powered by the new Apple A14 Bionic Hexa-core processor. The smartphone comes with a 6.1 inches Super Retina XDR OLED capacitive touchscreen, 1170 x 2532 pixels resolution and HDR10 display, True Tone, and Wide color gamut.',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      '\$999',
                      style: TextStyle(fontSize: 35, color: Colors.redAccent),
                    ),
                    Spacer(),
                    const SizedBox(width: 50),
                    Container(
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xff6e3fc9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 4),
                      child: IconButton(
                          onPressed: toggleCart,
                          icon: Icon(
                            isCartSelected
                                ? Icons.shopping_cart_outlined
                                : Icons.check,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
