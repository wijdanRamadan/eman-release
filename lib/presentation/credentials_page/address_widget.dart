import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdressWidget extends StatelessWidget {
  const AdressWidget(
      {Key? key,
      required this.place,
      required this.companyName,
      required this.adress,
      required this.phoneNumber,
      required this.email})
      : super(key: key);
  final String place;
  final String companyName;
  final String adress;
  final String phoneNumber;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          place,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
        ),
        SizedBox(
          height: 5.0.h,
        ),
        Text(companyName),
        SizedBox(
          height: 5.0.h,
        ),
        Text(adress),
        SizedBox(
          height: 5.0.h,
        ),
        Text(phoneNumber),
        SizedBox(
          height: 5.0.h,
        ),
        Text(
          email,
          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
        ),
        SizedBox(
          height: 5.0.h,
        ),
      ],
    );
  }
}
