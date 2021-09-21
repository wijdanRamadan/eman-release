import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesRow extends StatelessWidget {
  const CategoriesRow(
      {Key? key,
      required this.category,
      required this.projectsNumber,
      required this.color})
      : super(key: key);

  final String category;
  final String projectsNumber;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              width: 10.w,
              height: 10.w,
              decoration: BoxDecoration(shape: BoxShape.circle, color: color),
            ),
            SizedBox(
              width: 20.w,
            ),
            Text(
              category,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              ' : $projectsNumber',
              style: Theme.of(context).textTheme.bodyText1,
            )
          ],
        )
      ],
    );
  }
}
