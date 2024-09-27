import 'package:flutter/material.dart';
import 'package:thefoodie/Widget/appbar.dart';
import 'package:thefoodie/information/items.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  appbar(context),

      body: ListView.builder(
        itemCount: Items.items.length,
        itemBuilder: (context, index) {
          final item = Items.items[index];

          return Card(
            elevation: 5,
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: SizedBox(
              width: 50, 
              height: 50, 
              child: Image.asset(
                item.image,
                fit: BoxFit.cover,  
              ),
            ),
              title: Text(item.name),
              subtitle: Text(item.description),
              trailing: Text(item.price),
              onTap: () {
                // Navigate to the item details page
                Navigator.pushNamed(context, '/itemDetails');
              },
            ),
          );
        },
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
                }, icon: const Icon(Icons.home), color: Colors.black,),
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
