import 'package:flutter/material.dart';
import '../../../media_query_service.dart'; // تأكد من أن المسار صحيح

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
    // استدعاء init لتحديث أبعاد الشاشة
    SizeConfig().init(context);

    return Container(
      padding: EdgeInsets.all(SizeConfig.heightPercentage(1)), // استخدام SizeConfig
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
            width: SizeConfig.widthPercentage(15), // استخدام SizeConfig
            height: SizeConfig.widthPercentage(15), // استخدام SizeConfig
            fit: BoxFit.cover,
          ),
          SizedBox(width: SizeConfig.widthPercentage(5)), // استخدام SizeConfig
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: SizeConfig.widthPercentage(4), // استخدام SizeConfig
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: SizeConfig.widthPercentage(3.5), // استخدام SizeConfig
                    color: Colors.grey[700],
                    fontFamily: 'Raleway',
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
