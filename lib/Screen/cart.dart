import 'package:flutter/material.dart';
import 'package:thefoodie/Widget/appbar.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  appbar(context),

      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Cart Page',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Image(image: AssetImage('assets/burger.jpeg'), width: 100, height: 100,),
              const Padding(
                padding: EdgeInsets.only(left :8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Burger', style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Text('4', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                    ),
                    Text('Price: 200', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(onPressed: (){}, 
              child: const Text('Remove'),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.red),
                fixedSize: WidgetStateProperty.all(Size(125, 50)),
              ),
              ),
            ],

          )
        ],
      ),

      bottomNavigationBar: Container(
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: IconButton(onPressed: (){
                  Navigator.pushReplacementNamed(context, '/home');
                }, icon: const Icon(Icons.home)),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                child: IconButton(onPressed: (){
                  Navigator.pushReplacementNamed(context, '/cart');
                }, icon: const Icon(Icons.shopping_cart), color: Colors.black,),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                child: IconButton(onPressed: (){
                  Navigator.pushReplacementNamed(context, '/orderList');
                }, icon: const Icon(Icons.list)),
              ),
            ],
            
           )
        
    ),
    );
  }
}