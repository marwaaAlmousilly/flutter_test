import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const CartItem({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.onIncrement,
    required this.onDecrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                    fontFamily: 'Raleway',
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: onDecrement,
                icon: Icon(Icons.remove, color: Colors.red),
              ),
              IconButton(
                onPressed: onIncrement,
                icon: Icon(Icons.add, color: Colors.green),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
