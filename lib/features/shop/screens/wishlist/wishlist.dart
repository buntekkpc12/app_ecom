import 'package:ecommerce/common/widgets/Icons/t_circular_icon.dart';
import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/product_cart/product_cart_vertical.dart';
import 'package:ecommerce/features/shop/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
        backgroundColor: dark ? TColors.dark : TColors.light,
        appBar: TAppBar(
          title: Text(
            'Wishlist',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCircularIcon(
              icon: Iconsax.add,
              onPressed: () => Get.to(const HomeScreen()),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                TGridLayout(
                    itemCount: 8,
                    itemBuilder: (_, index) => const TProductCardVertical())
              ],
            ),
          ),
        ));
  }
}
