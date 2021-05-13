import 'package:covid/dashboard/components/covid_tabbar.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: CovidTabbar(),
        ),
      ),
    );
  }
}
