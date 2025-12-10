import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_magang_hub/generated/locale_keys.g.dart';

import 'detail_product_controller.dart';

class DetailProductPage extends StatelessWidget {
  const DetailProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DetailProductController>();
    final product = controller.product;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildProductImageAppBar(product),
          _buildProductDetails(product),
        ],
      ),
      bottomNavigationBar: _buildBottomBar(product),
    );
  }

  Widget _buildProductImageAppBar(product) {
    return SliverAppBar(
      expandedHeight: 350,
      pinned: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.transparent,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Get.back(),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          color: Colors.white,
          padding: EdgeInsets.all(40),
          child: Hero(
            tag: 'product_${product.id}',
            child: Image.network(
              product.image,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return Center(child: Icon(Icons.image, size: 100, color: Colors.grey));
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProductDetails(product) {
    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCategoryChip(product.category),
              SizedBox(height: 16),
              _buildProductTitle(product.title),
              SizedBox(height: 16),
              _buildRatingSection(product.rating),
              SizedBox(height: 24),
              _buildDescriptionSection(product.description),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryChip(String category) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.purple.withValues(alpha: 0.2),
            Colors.blue.withValues(alpha: 0.2),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.purple, width: 1),
      ),
      child: Text(
        category.toUpperCase(),
        style: TextStyle(
          color: Colors.purple,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildProductTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }

  Widget _buildRatingSection(rating) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.amber.withValues(alpha: 0.1),
            Colors.orange.withValues(alpha: 0.1),
          ],
        ),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.amber.shade300),
      ),
      child: Row(
        children: [
          Icon(Icons.star, color: Colors.amber, size: 28),
          SizedBox(width: 8),
          Text(
            '${rating.rate}',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          Text(' / 5.0', style: TextStyle(fontSize: 16, color: Colors.grey[600])),
          Spacer(),
          _buildReviewCount(rating.count),
        ],
      ),
    );
  }

  Widget _buildReviewCount(int count) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(Icons.people, color: Colors.purple, size: 18),
          SizedBox(width: 6),
          Text(
            '$count reviews',
            style: TextStyle(
              color: Colors.purple,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDescriptionSection(String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tr(LocaleKeys.detail_description),
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 12),
        Text(
          description,
          style: TextStyle(fontSize: 15, height: 1.6, color: Colors.grey[700]),
        ),
      ],
    );
  }

  Widget _buildBottomBar(product) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: Offset(0, -5),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            _buildPriceSection(product.price),
            SizedBox(width: 20),
            Expanded(child: _buildProductIdContainer(product.id)),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildPriceSection(double price) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tr(LocaleKeys.detail_price),
          style: TextStyle(fontSize: 14, color: Colors.grey[600]),
        ),
        SizedBox(height: 4),
        Text(
          '\$${price.toStringAsFixed(2)}',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.purple,
          ),
        ),
      ],
    );
  }

  Widget _buildProductIdContainer(int id) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.tag, color: Colors.purple),
          SizedBox(width: 12),
          Text(
            tr(LocaleKeys.detail_productId),
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          Text(
            '#$id',
            style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
