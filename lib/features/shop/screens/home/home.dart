import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_shapes/container/circular_container.dart';
import '../../../../common/widgets/custom_shapes/container/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimayHeaderContainer(
              child: Column(
                children: [THomeAppBar()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
