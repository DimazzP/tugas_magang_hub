import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../home_controller.dart';

class CategoryFilterChips extends StatelessWidget {
  final HomeController controller;

  const CategoryFilterChips({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.categories.isEmpty) {
        return SizedBox.shrink();
      }

      return SliverToBoxAdapter(
        child: Container(
          height: 60,
          margin: EdgeInsets.symmetric(vertical: 8),
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
                  child: FilterChip(
                    label: Text(
                      category,
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.purple,
                        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                    selected: isSelected,
                    onSelected: (selected) {
                      controller.filterByCategory(category);
                    },
                    backgroundColor: Colors.white,
                    selectedColor: Colors.purple,
                    checkmarkColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                        color: isSelected ? Colors.purple : Colors.white,
                        width: 2,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  ),
                );
              });
            },
          ),
        ),
      );
    });
  }
}

