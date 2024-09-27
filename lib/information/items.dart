//Items file
class Items {
  final String name;
  final String image;
  final String price;
  final String description;
  final String id;
  final String quantity;

  Items({
    required this.name,
    required this.image,
    required this.price,
    required this.description,
    required this.id,
    required this.quantity,
  });

  static List<Items> items = [
    Items(
      name: 'Burger',
      image: 'assets/burger.jpeg',
      price: '10',
      description: 'Burger with cheese and tomato',
      id: '1',
      quantity: '1',
    ),
    Items(
      name: 'Pizza',
      image: 'assets/pizza.jpeg',
      price: '15',
      description: 'Pizza with cheese and tomato',
      id: '2',
      quantity: '1',
    ),
    Items(
      name: 'Pasta',
      image: 'assets/pasta.jpeg',
      price: '20',
      description: 'Pasta with cheese and tomato',
      id: '3',
      quantity: '1',
    ),
    Items(
      name: 'Sandwich',
      image: 'assets/sandwich.jpeg',
      price: '5',
      description: 'Sandwich with cheese and tomato',
      id: '4',
      quantity: '1',
    ),
  ];
}