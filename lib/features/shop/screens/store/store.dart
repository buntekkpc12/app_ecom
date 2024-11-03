import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/container/search_container.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/store/widgets/category_tab.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../common/widgets/texts/t_brand_title_text_with_verified_icon.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterIcon(
              onPressed: () {},
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      const TSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),
                      TSectionHeading(
                        title: 'Featured Brands',
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 1.5,
                      ),
                      TGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return const TBrandCard();
                          })
                    ],
                  ),
                ),
                bottom: const TTabBar(
                  tabs: [
                    Tab(
                      child: Text('Clothes'),
                    ),
                    Tab(
                      child: Text('Sports'),
                    ),
                    Tab(
                      child: Text('Shoes'),
                    ),
                    Tab(
                      child: Text('Cosmetics'),
                    ),
                    Tab(
                      child: Text('Furniture'),
                    ),
                    Tab(
                      child: Text('Electronics'),
                    ),
                  ],
                ),
              )
            ];
          },
          body: TabBarView(children: [
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TRoundedContainer(
                    showBorder: true,
                    borderColor: TColors.darkGrey,
                    backgroundColor: Colors.transparent,
                    margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
                    child: Column(
                      children: [
                        const TBrandCard(
                          showBorder: false,
                        ),
                        Row(
                          children: [
                            TRoundedContainer(
                              height: 100,
                              backgroundColor:
                                  THelperFunctions.isDarkMode(context)
                                      ? TColors.darkerGrey
                                      : TColors.light,
                              margin: const EdgeInsets.only(right: TSizes.sm),
                              padding: const EdgeInsets.all(TSizes.md),
                              child: const Image(
                                image: AssetImage(TImages.productImage1),
                                fit: BoxFit.contain,
                              ),
                            ),
                            TRoundedContainer(
                              height: 100,
                              backgroundColor:
                                  THelperFunctions.isDarkMode(context)
                                      ? TColors.darkerGrey
                                      : TColors.light,
                              margin: const EdgeInsets.only(right: TSizes.sm),
                              padding: const EdgeInsets.all(TSizes.md),
                              child: const Image(
                                image: AssetImage(TImages.productImage2),
                                fit: BoxFit.contain,
                              ),
                            ),
                            TRoundedContainer(
                              height: 100,
                              backgroundColor:
                                  THelperFunctions.isDarkMode(context)
                                      ? TColors.darkerGrey
                                      : TColors.light,
                              margin: const EdgeInsets.only(right: TSizes.sm),
                              padding: const EdgeInsets.all(TSizes.md),
                              child: const Image(
                                image: AssetImage(TImages.productImage3),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
