import 'package:flutter/material.dart';
import 'package:thefoodie/Widget/appbar.dart';

class Itemdetails extends StatelessWidget {
  const Itemdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar(context),

        body: Padding(
          padding:  EdgeInsets.all(10.0),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Image(image: AssetImage('assets/burger.jpeg'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('Burger', style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all( 10.0),
                child: Text('Burger with cheese and veggies', style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Price: 200', style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('Quantity', style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.remove
                              ),
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(Colors.red),
                              )
                            ),
                            Container(
                              margin: const EdgeInsets.all(10),
                              child: const Text('1',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(Colors.red),
                              )
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    child: const Text('Add to Cart'),
                  ),
                ],
              )
            ],
          ),
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
                }, icon: const Icon(Icons.shopping_cart)),
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