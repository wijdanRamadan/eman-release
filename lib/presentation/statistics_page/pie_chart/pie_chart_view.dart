import 'package:flutter/material.dart';

import '../category.dart';
import 'pie_chart.dart';

class PieChartView extends StatelessWidget {
  PieChartView({
    required this.categories,
    Key? key,
  }) : super(key: key);
  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) => Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(193, 214, 233, 1),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              spreadRadius: -10,
              blurRadius: 17,
              offset: Offset(-5, -5),
              color: Colors.white,
            ),
            BoxShadow(
              spreadRadius: -2,
              blurRadius: 10,
              offset: Offset(7, 7),
              color: Color.fromRGBO(146, 182, 216, 1),
            )
          ],
        ),
        child: Stack(
          children: [
            Center(
              child: SizedBox(
                width: constraint.maxWidth * 0.6,
                child: CustomPaint(
                  child: Center(),
                  foregroundPainter: PieChart(
                    width: constraint.maxWidth * 0.5,
                    categories: categories,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                height: constraint.maxWidth * 0.4,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(193, 214, 233, 1),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                      offset: Offset(-1, -1),
                      color: Colors.white,
                    ),
                    BoxShadow(
                      spreadRadius: -2,
                      blurRadius: 10,
                      offset: Offset(5, 5),
                      color: Colors.black.withOpacity(0.5),
                    )
                  ],
                ),
                child: Center(
                  child: Text(projectsNumber(categories).toString()),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

int projectsNumber(List<Category> categories) {
  int num = 0;
  for (Category category in categories) {
    num += category.amount;
  }

  return num;
}
