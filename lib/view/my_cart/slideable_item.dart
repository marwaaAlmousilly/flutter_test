import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'cart_item.dart';

class SlidableItem extends StatelessWidget {
  final String image;
  final String title;
  final String price;

  const SlidableItem({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Slidable(
// تعديل هنا
        startActionPane: ActionPane(
          motion: ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {
// منطق الزيادة
              },
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              icon: Icons.add,
            ),
            SlidableAction(
              onPressed: (context) {
// منطق النقصان
              },
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              icon: Icons.remove,
            ),
          ],
        ),
        endActionPane: ActionPane(
          motion: ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {
// منطق الحذف
              },
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              icon: Icons.delete,
            ),
          ],
        ),
        child: CartItem(
          image: image,
          title: title,
          price: price,
          onIncrement: () {
// منطق الزيادة
          },
          onDecrement: () {
// منطق النقصان
          },
        ),
      ),
    );
  }
}
