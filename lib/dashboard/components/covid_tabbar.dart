import 'package:covid/common/colors.dart';
import 'package:covid/common/styles.dart';
import 'package:covid/dashboard/components/covid_card.dart';
import 'package:flutter/material.dart';

class CovidTabbar extends StatefulWidget {
  const CovidTabbar({
    Key? key,
  }) : super(key: key);

  @override
  _CovidTabbarState createState() => _CovidTabbarState();
}

class _CovidTabbarState extends State<CovidTabbar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(0),
          padding: const EdgeInsets.all(8),
          decoration: tabbarContainerStyle,
          child: TabBar(
            controller: _tabController,
            indicator: tabbarIndicatorStyle,
            labelStyle: labelStyle,
            labelColor: CovidColors.labelColor,
            unselectedLabelColor: CovidColors.unselectedLabelColor,
            tabs: const [
              // first tab [you can add an icon using the icon property]
              Tab(
                text: 'Country',
              ),
              Tab(
                text: 'State',
              ),
              Tab(
                text: 'Worldwide',
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            child: TabBarView(
              controller: _tabController,
              children: [
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 3 / 2,
                    crossAxisCount: 2,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) => CovidCard(
                    color: Colors.blue,
                    title: 'Confirmed',
                    amount: '3.876.542',
                  ),
                ),
                Text('2'),
                Text('3'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
