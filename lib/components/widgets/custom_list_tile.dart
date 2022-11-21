import 'package:flutter/material.dart';
import 'package:task/components/widgets/custom_text.dart';

import '../constant.dart';

class CustomListTile extends StatelessWidget {
  CustomListTile({
    Key? key,
    required this.title,
    this.iconLeading,
    required this.titleColor,
  }) : super(key: key);

  final String title;
  final IconData? iconLeading;
  final Color titleColor;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: CustomText(
        text: title,
        color: titleColor,
        fontWeight: FontWeight.bold,
      ),
      leading: Icon(
        iconLeading,
        color: Constant.moveColor,
      ),
    );
  }
}
