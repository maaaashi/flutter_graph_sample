import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';

class GraphicPage extends StatelessWidget {
  const GraphicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Graphic Page")),
      body: SingleChildScrollView(child: _GraphView()),
    );
  }
}

class _GraphView extends StatelessWidget {
  const _GraphView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Chart(
        data: [
          {'genre': 'Sports', 'sold': 275},
          {'genre': 'Strategy', 'sold': 115},
          {'genre': 'Action', 'sold': 120},
          {'genre': 'Shooter', 'sold': 350},
          {'genre': 'Other', 'sold': 150},
        ],
        variables: {
          'genre': Variable(accessor: (Map map) => map['genre'] as String),
          'sold': Variable(accessor: (Map map) => map['sold'] as num),
        },
        marks: [IntervalMark()],
        axes: [Defaults.horizontalAxis, Defaults.verticalAxis],
      ),
    );
  }
}
