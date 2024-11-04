// icon_back_button.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IconBackButton extends StatelessWidget {
  final Widget nextPage; // الصفحة التي سيتم الانتقال إليها

  const IconBackButton({
    super.key,
    required this.nextPage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          nextPage,
          transition: Transition.fade,
          duration: const Duration(milliseconds: 300),
        );
      },
      child: const Icon(
        Icons.arrow_back_ios_new_sharp,
        color: Colors.black,
        size: 20,
      ),
    );
  }
}
