import 'package:flutter/material.dart';
import '../../../core/const_data/app_colors.dart';
import '../../../core/const_data/app_image.dart';
import '../../../media_query_service.dart';
import '../../../widgets/icon_button.dart';
import '../../home/home_home/view/view.dart';
import '../slideable_item.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Mycolor.textfaild,
      body: Stack(
        children: [
          // Back button with circular white controller
          Positioned(
            top: SizeConfig.heightPercentage(8),
            left: SizeConfig.widthPercentage(8),
            child: Container(
              width: SizeConfig.widthPercentage(12), // Width of the circular controller
              height: SizeConfig.widthPercentage(12), // Height of the circular controller
              decoration: BoxDecoration(
                color: Colors.white, // Background color
                shape: BoxShape.circle, // Make it circular
              ),
              child: IconBackButton(nextPage: ExploreView()), // Your original button
            ),
          ),
          // Title
          Positioned(
            top: SizeConfig.heightPercentage(10),
            left: SizeConfig.widthPercentage(40),
            child: Container(
              width: SizeConfig.widthPercentage(30),
              child: Center(
                child: Text(
                  'My Cart',
                  style: TextStyle(
                    fontFamily: 'Raleway-Bold',
                    fontSize: SizeConfig.widthPercentage(5),
                    fontWeight: FontWeight.w600,
                    color: Mycolor.primaryColor,
                  ),
                ),
              ),
            ),
          ),
          // Cart items list
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.heightPercentage(15)),
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthPercentage(5)),
              children: [
                Padding(
                  padding: EdgeInsets.only(top: SizeConfig.heightPercentage(3)),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '3 Items',
                      style: TextStyle(
                        fontSize: SizeConfig.widthPercentage(5),
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
                SlidableItem(
                  image: AppImage.tesh,
                  title: 'Programmer T-shirt',
                  price: '\$584.95',
                ),
                SlidableItem(
                  image: AppImage.teshe,
                  title: 'Programmer T-shirt',
                  price: '\$94.05',
                ),
                SlidableItem(
                  image: AppImage.tish,
                  title: 'Programmer T-shirt',
                  price: '\$74.95',
                ),
                SizedBox(height: SizeConfig.heightPercentage(10)),
                // Summary and Checkout
                _buildCheckoutSummary(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Summary section
  Widget _buildCheckoutSummary() {
    return Container(
      height: SizeConfig.heightPercentage(30),
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.widthPercentage(5),
        vertical: SizeConfig.heightPercentage(1),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildSubtotalRow(),
          Divider(color: Colors.grey[400], thickness: 1),
          _buildTotalRow(),
          SizedBox(height: SizeConfig.heightPercentage(3)),
          _buildCheckoutButton(),
        ],
      ),
    );
  }

  // Subtotal row
  Row _buildSubtotalRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildSubtotalLabel(),
        _buildSubtotalValue(),
      ],
    );
  }

  // Subtotal labels
  Column _buildSubtotalLabel() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Subtotal', style: _subtotalTextStyle()),
        Text('Delivery', style: _subtotalTextStyle()),
      ],
    );
  }

  // Subtotal values
  Column _buildSubtotalValue() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text('\$753.95', style: _valueTextStyle()),
        Text('\$60.20', style: _valueTextStyle()),
      ],
    );
  }

  // Styling methods
  TextStyle _subtotalTextStyle() {
    return TextStyle(
      fontSize: SizeConfig.widthPercentage(5),
      color: Colors.grey[700],
      fontFamily: 'Raleway',
    );
  }

  TextStyle _valueTextStyle() {
    return TextStyle(
      fontSize: SizeConfig.widthPercentage(5),
      color: Colors.black,
    );
  }

  // Total row
  Row _buildTotalRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Total Cost', style: _totalCostTextStyle()),
        Text(
          '\$814.15',
          style: TextStyle(
            fontSize: SizeConfig.widthPercentage(5.5),
            color: Color(0xFF34C759),
          ),
        ),
      ],
    );
  }

  TextStyle _totalCostTextStyle() {
    return TextStyle(
      fontSize: SizeConfig.widthPercentage(4.5),
      color: Colors.black,
      fontFamily: 'Raleway',
    );
  }

  // Checkout button
  ElevatedButton _buildCheckoutButton() {
    return ElevatedButton(
      onPressed: () {
        // Logic for checkout
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF34C759),
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthPercentage(28), // تعديل العرض
          vertical: SizeConfig.heightPercentage(2),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        'Checkout',
        style: TextStyle(
          fontSize: SizeConfig.widthPercentage(4),
          color: Colors.white,
          fontFamily: 'Raleway',
        ),
      ),
    );
  }
}
