import 'package:flutter/material.dart';
import 'package:sync_fusion_bar_chart/bar_charts/product_sales.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../text_styles/text_styles.dart';

class BarChart extends StatelessWidget {
  final List<ProductSales> productSales;
  const BarChart({
    Key? key,
    required this.productSales,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 10),
      child: SfCartesianChart(
        title: ChartTitle(
            text: 'Products Sold',
            alignment: ChartAlignment.near,
            textStyle: kCardItemHeadingStyle),
        series: <ChartSeries>[
          ColumnSeries<ProductSales, String>(
            dataSource: productSales,
            xValueMapper: (ProductSales productSales, _) =>
                productSales.timePeriod,
            yValueMapper: (ProductSales productSales, _) => productSales.sales,
            spacing: -1,
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            color: const Color(0xFF0094FF),
            width: 0.15,
          )
        ],
        primaryXAxis:
            CategoryAxis(labelStyle: kNavItemsStyle.copyWith(fontSize: 12)),
        primaryYAxis: NumericAxis(
            labelStyle: kNavItemsStyle.copyWith(fontSize: 12),
            minimum: 0,
            maximum: 30),
      ),
    );
  }
}
