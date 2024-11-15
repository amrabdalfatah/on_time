import 'package:flutter/material.dart';
import 'package:on_time_app/core/utils/colors.dart';

class ActionIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const ActionIcon({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 40,
        width: 40,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Icon(
          icon,
          color: AppColors.secondaryColor,
        ),
      ),
    );
  }
}
