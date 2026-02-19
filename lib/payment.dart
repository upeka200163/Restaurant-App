import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  final int total;

  PaymentScreen({required this.total});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Payment 💳")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Total Amount: Rs. $total",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              child: Text("Pay Now"),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text("Payment Successful ✅"),
                    content: Text("Your order has been placed!"),
                    actions: [
                      TextButton(
                        child: Text("OK"),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
