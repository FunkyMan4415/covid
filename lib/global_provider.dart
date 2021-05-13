import 'package:covid/dashboard/dashboard_screen.dart';
import 'package:covid/dashboard/service/covid_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (_) => CovidService(),
        ),
      ],
      child: MaterialApp(
        home: DashboardScreen(),
      ),
    );
  }
}
