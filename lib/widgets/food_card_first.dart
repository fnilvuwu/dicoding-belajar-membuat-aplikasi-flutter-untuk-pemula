import 'package:flutter/material.dart';
import 'package:my_resto/models/food.dart';

class FoodCardFirst extends StatelessWidget {
  final Food food;

  const FoodCardFirst({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 5),
            color: Colors.black12,
            blurRadius: 4,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            child: Image.network(
              food.imageUrl,
              height: 80,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              food.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Rp ${food.price}",
              style: const TextStyle(fontSize: 12),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 16,
                ),
                const SizedBox(width: 2),
                Text('${food.rating ?? 0}'),
              ],
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
