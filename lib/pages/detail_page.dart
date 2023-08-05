import 'package:flutter/material.dart';
import 'package:my_resto/models/food.dart';
import 'package:my_resto/providers/detail_notifier.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';

class DetailPage extends StatelessWidget {
  final Food food;
  const DetailPage({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DetailNotifier(),
      child: Builder(builder: (context) {
        final detailNotifier = context.watch<DetailNotifier>();
        // final detailNotifier = Provider.of<DetailNotifier>(context);

        return Scaffold(
          backgroundColor: Colors.white,
          extendBodyBehindAppBar: true,
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.chevron_left_rounded,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          detailNotifier.changeFavoriteStatus();
                          ScaffoldMessenger.of(context)
                            ..hideCurrentMaterialBanner()
                            ..showSnackBar(
                              SnackBar(
                                duration: Duration(
                                  milliseconds: 500,
                                ),
                                content: detailNotifier.isFavorite
                                    ? Text('Ditambahkan ke favorit!')
                                    : Text('Dihilangkan dari favorit!'),
                              ),
                            );
                        },
                        icon: detailNotifier.isFavorite
                            ? Icon(
                                Icons.favorite_rounded,
                                color: Colors.red,
                              )
                            : Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                              ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 24, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  food.name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  food.category.name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Colors.deepPurple,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Rp ${food.price}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.star_rate_rounded,
                                color: Colors.amber,
                              ),
                              const SizedBox(width: 2),
                              Text(
                                '${food.rating ?? 0}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Stack(
                        children: [
                          const SizedBox(
                            height: 200,
                            child: Center(
                              child: SizedBox(
                                child: CircularProgressIndicator(),
                              ),
                            ),
                          ),
                          Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: FadeInImage.memoryNetwork(
                                placeholder: kTransparentImage,
                                image: food.imageUrl,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Description',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${food.description}',
                        style: const TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            label: const Text('Pesan Sekarang!'),
            icon: const Icon(
              Icons.attach_money_rounded,
              size: 20,
            ),
          ),
        );
      }),
    );
  }
}
