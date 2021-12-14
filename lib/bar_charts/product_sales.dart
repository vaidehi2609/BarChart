class ProductSales {
  final String timePeriod;
  final double sales;

  ProductSales({required this.timePeriod, required this.sales});

  static List<ProductSales> getProductSales(){
    return <ProductSales>[
      ProductSales(timePeriod: 'week 1', sales: 20 ),
      ProductSales(timePeriod: 'week 2', sales: 25 ),
      ProductSales(timePeriod: 'week 3', sales: 5 ),
      ProductSales(timePeriod: 'week 4', sales: 13 )
    ];
  }
}
