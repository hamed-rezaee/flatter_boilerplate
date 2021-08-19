import 'package:flutter/material.dart';

import 'package:flutter_app/app/controllers/home_controller.dart';

import 'package:nylo_support/widgets/ny_state.dart';
import 'package:nylo_support/widgets/ny_stateful_widget.dart';

class HomePage extends NyStatefulWidget {
  HomePage({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends NyState<HomePage> {
  final HomePageController controller = HomePageController();

  @override
  dynamic widgetDidLoad() async {}

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(widget.title),
        ),
        body: Center(child: Text(widget.title)),
      );
}
