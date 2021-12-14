import 'package:flutter/material.dart';
import 'package:sync_fusion_bar_chart/bar_charts/bar_chart.dart';
import 'package:sync_fusion_bar_chart/bar_charts/product_sales.dart';

class TestPage extends StatelessWidget {
  TestPage({ Key? key }) : super(key: key);
  final productSales = ProductSales.getProductSales();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: BarChart(productSales: productSales)),
      
    );
  }
}