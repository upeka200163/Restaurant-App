import 'package:flutter/material.dart';
import 'cart.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> menu = [
    {"name": "Burger", "price": 850},
    {"name": "Pizza", "price": 1500},
    {"name": "Fried Rice", "price": 950},
    {"name": "Kottu", "price": 1200},
  ];

  List<Map<String, dynamic>> cart = [];

  void addToCart(item) {
    setState(() {
      cart.add(item);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("${item['name']} added to cart ✅")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurant Menu 🍴"),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => CartScreen(cartItems: cart),
                ),
              );
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, index) {
          final item = menu[index];
          return Card(
            child: ListTile(
              title: Text(item["name"]),
              subtitle: Text("Rs. ${item["price"]}"),
              trailing: ElevatedButton(
                child: Text("Add"),
                onPressed: () => addToCart(item),
              ),
            ),
          );
        },
      ),
    );
  }
}
