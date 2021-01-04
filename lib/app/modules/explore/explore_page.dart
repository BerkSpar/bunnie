import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'explore_controller.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends ModularState<ExplorePage, ExploreController> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Explore'),
    );
  }
}
