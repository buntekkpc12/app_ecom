import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_text_widget/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'image': TImages.shoeIcon, 'title': 'Shoes'},
      {'image': TImages.clothIcon, 'title': 'Clothes'},
      {'image': TImages.cosmeticsIcon, 'title': 'Cosmetics'},
      {'image': TImages.sportIcon, 'title': 'Sports'},
      {'image': TImages.electronicsIcon, 'title': 'Electronics'},
      {'image': TImages.furnitureIcon, 'title': 'Furniture'},
    ];

    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          final category = categories[index];
          return TVerticalImageText(
            image: category['image']!,
            title: category['title']!,
            onTap: () {},
          );
        },
      ),
    );
  }
}
