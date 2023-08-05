import 'package:my_resto/models/food_addon.dart';
import 'package:my_resto/models/food_category.dart';

class Food {
  final String name;
  final int price;
  final double? rating;
  final String? description;
  final String imageUrl;
  final FoodCategory category;
  final List<FoodAddon> foodAddon;

  Food({
    required this.name,
    required this.price,
    this.rating,
    this.description,
    required this.imageUrl,
    required this.category,
    required this.foodAddon,
  });
}
