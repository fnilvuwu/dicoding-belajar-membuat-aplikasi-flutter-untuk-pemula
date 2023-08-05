import 'package:my_resto/models/food.dart';
import 'package:my_resto/models/food_addon.dart';
import 'package:my_resto/models/food_category.dart';

List<Food> foods = [
  Food(
    name: 'Beef Burger Special',
    price: 15000,
    rating: 4.5,
    description:
        'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iusto cupiditate, aliquid laborum impedit esse molestiae fugit commodi voluptatem placeat aspernatur!',
    imageUrl:
        'https://assets-myneworleans-com.s3-accelerate.amazonaws.com/2021/12/1-1-burger-photographed-by-randy-schmidt.jpg',
    category: FoodCategory.daging,
    foodAddon: foodAddon,
  ),
  Food(
    name: 'Tumis Leek',
    price: 12000,
    rating: 4.0,
    description:
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Totam ratione itaque ab iusto dolorem ullam?',
    imageUrl:
        'https://4.bp.blogspot.com/-IRUnR_MH1kQ/XNIkcKTJdZI/AAAAAAAAEBU/aHckCnaGzls0dp-GG-3_wS6ow50A3_MegCLcBGAs/s400/image1%2B%252810%2529.jpeg',
    category: FoodCategory.sayuran,
    foodAddon: foodAddon,
  ),
  Food(
    name: 'Salad Lengkeng',
    price: 18000,
    description:
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti natus perspiciatis nesciunt.',
    imageUrl:
        'https://img-global.cpcdn.com/recipes/941d590f96fb49e6/680x482cq70/salad-buah-mudah-dan-enak-foto-resep-utama.jpg',
    category: FoodCategory.salad,
    foodAddon: foodAddon,
  ),
  Food(
    name: 'Bebek Crepes',
    price: 20000,
    imageUrl:
        'https://awsimages.detik.net.id/community/media/visual/2021/08/11/resep-bebek-goreng-surabaya-1_43.jpeg',
    category: FoodCategory.daging,
    foodAddon: foodAddon,
  ),
  Food(
    name: 'Kari Terong',
    price: 10000,
    rating: 4.1,
    imageUrl:
        'https://img-global.cpcdn.com/recipes/359dae965ee106d5/1200x630cq70/photo.jpg',
    category: FoodCategory.sayuran,
    foodAddon: foodAddon,
  ),
  Food(
    name: 'Salad Yuzu',
    price: 10000,
    rating: 4.1,
    description:
        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio dicta, qui culpa consequuntur asperiores sed sunt aspernatur?',
    imageUrl:
        'https://img.sunset02.com/sites/default/files/image/recipes/su/09/04/crab-mango-salad-su-1886194-x.jpg',
    category: FoodCategory.salad,
    foodAddon: foodAddon,
  ),
];

List<FoodAddon> foodAddon = [
  FoodAddon(
    name: 'Grated Cheese',
    price: 2000,
  ),
  FoodAddon(
    name: 'Rice',
    price: 5000,
  ),
  FoodAddon(
    name: 'Sauce/Mayonnaise',
    price: 3000,
  ),
];

List<String> banners = [
  'https://assets-myneworleans-com.s3-accelerate.amazonaws.com/2021/12/1-1-burger-photographed-by-randy-schmidt.jpg',
  'https://4.bp.blogspot.com/-IRUnR_MH1kQ/XNIkcKTJdZI/AAAAAAAAEBU/aHckCnaGzls0dp-GG-3_wS6ow50A3_MegCLcBGAs/s1600/image1%2B%252810%2529.jpeg',
  'https://img-global.cpcdn.com/recipes/941d590f96fb49e6/680x482cq70/salad-buah-mudah-dan-enak-foto-resep-utama.jpg',
];
