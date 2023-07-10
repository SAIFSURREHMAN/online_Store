import 'package:flutter/material.dart';

import 'first_screen.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
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
              Text(
                'Cart',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              ListTile(
                leading: Icon(
                  Icons.check,
                  size: 40,
                  color: Colors.white,
                ),
                title: Text(
                  'Iphone 12 pro',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.remove_circle_outline_sharp,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text(
                      '\$999',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Container(
                      color: Colors.black45,
                      //  width: 150,
                      height: 40,
                      child: Row(
                        children: [
                          Text(
                            'Pay With',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          Icon(
                            Icons.g_mobiledata_sharp,
                            // size: 30,
                            color: Colors.white,
                          ),
                          Text(
                            'Pay',
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
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
