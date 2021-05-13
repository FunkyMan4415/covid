import 'package:covid/common/styles.dart';
import 'package:flutter/material.dart';

class CovidCard extends StatelessWidget {
  const CovidCard({
    Key? key,
    required this.color,
    required this.title,
    required this.amount,
  }) : super(key: key);

  final Color color;
  final String title;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              title,
              style: cardTitleStyle.copyWith(color: color),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              amount,
              style: cardAmountStyle.copyWith(color: color),
            ),
          ),
        ],
      ),
    );
  }
}
