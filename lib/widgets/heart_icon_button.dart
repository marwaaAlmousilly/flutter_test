import 'package:flutter/material.dart';

class HeartIconButton extends StatelessWidget {
  final ValueNotifier<bool> isLikedNotifier = ValueNotifier<bool>(false); // متغير الحالة

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isLikedNotifier,
      builder: (context, isLiked, child) {
        return IconButton(
          icon: Icon(
            isLiked ? Icons.favorite : Icons.favorite_border,
            color: isLiked ? Colors.red : Colors.grey,
          ),
          onPressed: () {
            isLikedNotifier.value = !isLiked; // تغيير الحالة عند الضغط
          },
        );
      },
    );
  }
}
