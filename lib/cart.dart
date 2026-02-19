import 'package:flutter/material.dart';
import 'payment.dart';

class CartScreen extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems;

  CartScreen({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    int total = cartItems.fold(0, (sum, item) => sum + item["price"] as int);

    return Scaffold(
      appBar: AppBar(title: Text("My Cart 🛒")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cartItems[index]["name"]),
                  trailing: Text("Rs. ${cartItems[index]["price"]}"),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Text(
                  "Total: Rs. $total",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  child: Text("Proceed to Payment"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => PaymentScreen(total: total),
                      ),
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
