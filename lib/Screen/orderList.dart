import 'package:flutter/material.dart';
import 'package:thefoodie/Widget/appbar.dart';

class OrderList extends StatefulWidget {
  const OrderList({super.key});

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),

      body:Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Order List',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: const Color.fromARGB(255, 224, 163, 163),
            padding: EdgeInsets.symmetric(vertical: 20.00, horizontal: 80.00),
            child: const Column(children: [
              Text(
                'Order ID: 1234',
              ),
              Text(
                'Date: 12/12/2021',
              ),
              Text(
                'Total: 200',
              ),
              Text('Status: Delivered'),
            ],),
          ),
          
              const SizedBox(height: 20),
              Container(
            margin: const EdgeInsets.all(10),
            color: const Color.fromARGB(255, 224, 163, 163),
            padding: EdgeInsets.symmetric(vertical: 20.00, horizontal: 80.00),
            child: const Column(children: [
              Text(
                'Order ID: 2567',
              ),
              Text(
                'Date: 10/12/2024',
              ),
              Text(
                'Total: 1500',
              ),
              Text('Status: Delivered'),
            ],),
          ),
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
                }, icon: const Icon(Icons.home),),
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
                }, icon: const Icon(Icons.list), color: Colors.black,),
              ),
            ],
           ),
        ),
    );
  }
}