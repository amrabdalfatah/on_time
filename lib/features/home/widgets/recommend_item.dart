import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RecommendItem extends StatelessWidget {
  final String salary;
  final String image;
  final double rate;
  final bool isFavorite;
  const RecommendItem({
    super.key,
    required this.salary,
    required this.image,
    required this.rate,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 180,
      padding: const EdgeInsets.only(right: 12),
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 20,
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 40,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Text(
                        '$rate',
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      const Icon(
                        FontAwesomeIcons.solidStar,
                        size: 12,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Center(
                    child: Icon(
                      FontAwesomeIcons.solidHeart,
                      size: 12,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 0,
            child: Container(
              // width: 45,
              height: 20,
              padding: const EdgeInsets.symmetric(horizontal: 4),
              decoration: const BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  )),
              child: Center(
                child: Text(
                  salary,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
