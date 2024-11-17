import 'package:flutter/material.dart';
import 'package:on_time_app/core/utils/colors.dart';
import 'package:on_time_app/core/utils/images.dart';
import 'package:on_time_app/features/home/widgets/best_seller_item.dart';
import 'package:on_time_app/features/home/widgets/category_item.dart';
import 'package:on_time_app/features/home/widgets/recommend_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 12.0,
          ),
          child: SizedBox(
            height: 60,
            width: double.infinity,
            child: Row(
              children: [
                CategoryItem(
                  icon: Icons.add,
                  text: 'Snacks',
                ),
                CategoryItem(
                  icon: Icons.add,
                  text: 'Meal',
                ),
                CategoryItem(
                  icon: Icons.add,
                  text: 'Vegan',
                ),
                CategoryItem(
                  icon: Icons.add,
                  text: 'Dessert',
                ),
                CategoryItem(
                  icon: Icons.add,
                  text: 'Drinks',
                ),
              ],
            ),
          ),
        ),
        const Divider(
          height: 2,
          color: AppColors.secondaryColor,
        ),
        Row(
          children: [
            const Expanded(
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
              child: const Text(
                'View All >',
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.mainColor,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 110,
          width: double.infinity,
          child: Row(
            children: [
              BestSellerItem(
                text: '\$103.0',
                image: Images.logoBg,
              ),
              BestSellerItem(
                text: '\$50.0',
                image: Images.logoBg,
              ),
              BestSellerItem(
                text: '\$12.99',
                image: Images.logoBg,
              ),
              BestSellerItem(
                text: '\$8.20',
                image: Images.logoBg,
              ),
            ],
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
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  'ADS for Business',
                ),
              ),
            ),
          ),
        ),
        const Text(
          'Recommend',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 12.0,
          ),
          child: SizedBox(
            height: 165,
            width: double.infinity,
            child: Row(
              children: [
                RecommendItem(
                  salary: '\$10.0',
                  image: Images.logoBg,
                  rate: 5.0,
                  isFavorite: true,
                ),
                RecommendItem(
                  salary: '\$25.0',
                  image: Images.logoBg,
                  rate: 5.0,
                  isFavorite: true,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
