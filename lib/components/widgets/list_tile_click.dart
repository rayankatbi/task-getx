import 'package:flutter/material.dart';
import 'package:task/components/widgets/custom_text.dart';

import '../constant.dart';

class ListTileClick extends StatelessWidget {
  const ListTileClick(
      {Key? key,
      required this.title,
      this.iconTrailing,
      required this.titleColor,
      this.onPressed})
      : super(key: key);

  final String title;
  final IconData? iconTrailing;
  final Color titleColor;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: ListTile(
          title: CustomText(
            text: title,
            color: Constant.moveColor,
            fontWeight: FontWeight.bold,
          ),
          trailing: IconButton(
            icon: Icon(
              iconTrailing,
              color: Constant.moveColor,
            ),
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}
