import 'package:covid/common/colors.dart';
import 'package:flutter/material.dart';

final tabbarIndicatorStyle = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(
    50.0,
  ),
  boxShadow: [
    BoxShadow(
      offset: const Offset(0, 10),
      blurRadius: 15,
      color: CovidColors.shadowColor,
    )
  ],
);

final tabbarContainerStyle = BoxDecoration(
  borderRadius: BorderRadius.circular(50),
  color: CovidColors.tabbarBackgroundColor,
);

const labelStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 15);
