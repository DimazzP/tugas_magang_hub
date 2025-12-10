import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';
import 'widgets/product_card.dart';
import 'widgets/shimmer_product_grid.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Obx(() {
          // Loading state
          if (controller.isLoading.value) {
            return SafeArea(child: ShimmerProductGrid());
          }

          // Error state
          if (controller.errorMessage.value.isNotEmpty) {
            return SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.error_outline, size: 80, color: Colors.white),
                    SizedBox(height: 20),
                    Text(
                      'Error',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        controller.errorMessage.value,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: controller.refreshProducts,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.purple,
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      ),
                      child: Text('Retry'),
                    ),
                  ],
                ),
              ),
            );
          }

          // Empty state
          if (controller.products.isEmpty) {
            return SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_bag_outlined, size: 80, color: Colors.white),
                    SizedBox(height: 20),
                    Text(
                      'No products found',
                      style: TextStyle(fontSize: 18, color: Colors.white70),
                    ),
                  ],
                ),
              ),
            );
          }

          // Success state with SliverAppBar
          return RefreshIndicator(
            onRefresh: controller.fetchProducts,
            color: Colors.purple,
            child: CustomScrollView(
              slivers: [
                // SliverAppBar with title, category chips, and refresh button
                SliverAppBar(
                  expandedHeight: 160,
                  floating: false,
                  pinned: true,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  scrolledUnderElevation: 0,
                  surfaceTintColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  forceElevated: false,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16, bottom: 8),
                          child: Text(
                            'Products',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // Category Filter Chips inside AppBar
                        Obx(() {
                          if (controller.categories.isEmpty) {
                            return SizedBox.shrink();
                          }
                          return Container(
                            height: 50,
                            margin: EdgeInsets.only(bottom: 8),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              itemCount: controller.categories.length,
                              itemBuilder: (context, index) {
                                final category = controller.categories[index];
                                return Obx(() {
                                  final isSelected = controller.selectedCategory.value == category;
                                  return Padding(
                                    padding: EdgeInsets.only(right: 8),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: isSelected
                                              ? [
                                                  Colors.purple.withValues(alpha: 0.8),
                                                  Colors.purple.withValues(alpha: 0.8),
                                                ]
                                              : [
                                                  Colors.white.withValues(alpha: 0.5),
                                                  Colors.white.withValues(alpha: 0.5),
                                                ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: isSelected ? Colors.purple : Colors.grey,
                                          width: 2,
                                        ),
                                      ),
                                      child: Material(
                                        color: Colors.transparent,
                                        child: InkWell(
                                          onTap: () {
                                            controller.filterByCategory(category);
                                          },
                                          borderRadius: BorderRadius.circular(20),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                if (isSelected)
                                                  Padding(
                                                    padding: EdgeInsets.only(right: 8),
                                                    child: Icon(
                                                      Icons.check,
                                                      size: 18,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                Text(
                                                  category,
                                                  style: TextStyle(
                                                    color: isSelected ? Colors.white : Colors.purple,
                                                    fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                });
                              },
                            ),
                          );
                        }),
                      ],
                    ),
                    titlePadding: EdgeInsets.zero,
                  ),
                ),


                // Product Grid
                SliverPadding(
                  padding: EdgeInsets.all(16),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 0.7,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final product = controller.products[index];
                        return ProductCard(
                          product: product,
                          onTap: () {
                            // TODO: Navigate to detail page
                          },
                        );
                      },
                      childCount: controller.products.length,
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
