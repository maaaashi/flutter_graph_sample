import 'package:flutter/material.dart';
import 'package:flutter_graph_sample/data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SyncfusionFlutterChartPage extends StatelessWidget {
  const SyncfusionFlutterChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Syncfusion Flutter Chart Example')),
      body: SfCartesianChart(
        title: ChartTitle(text: '売上推移'),
        legend: Legend(isVisible: true),
        tooltipBehavior: TooltipBehavior(enable: true),
        primaryXAxis: CategoryAxis(),
        series: <CartesianSeries<SalesData, String>>[
          LineSeries<SalesData, String>(
            dataSource: dummySalesData,
            xValueMapper: (SalesData sales, _) => sales.month.toString(),
            yValueMapper: (SalesData sales, _) => sales.profitRate,
            name: '営業利益率',
          ),
          BarSeries(
            dataSource: dummySalesData,
            xValueMapper: (SalesData sales, _) => sales.month.toString(),
            yValueMapper: (SalesData sales, _) => sales.sales,
            name: '売上高',
            dataLabelSettings: DataLabelSettings(isVisible: true),
          ),
        ],
      ),
    );
  }
}
