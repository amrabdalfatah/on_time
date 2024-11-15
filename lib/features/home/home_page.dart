import 'package:flutter/material.dart';
import 'package:on_time_app/core/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
          ),
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
          ),
        ),
        Divider(
          height: 2,
          color: AppColors.secondaryColor,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                'Best Seller',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'View All >',
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.mainColor,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 110,
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
          ),
          child: SizedBox(
            height: 140,
            width: double.infinity,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
          ),
        ),
        Text(
          'Recommend',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
          ),
          child: SizedBox(
            height: 170,
            width: double.infinity,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
