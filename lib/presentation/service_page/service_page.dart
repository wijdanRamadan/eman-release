import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image(
                image:
                    Image.asset('assets/images/project_life_cycle.png').image,
                height: 350.h,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Divider(
              height: 8.h,
              thickness: 1,
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              AppLocalizations.of(context)!.ourServices.toUpperCase(),
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 8.h,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 7.w,
                        height: 7.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Theme.of(context).primaryColor),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        AppLocalizations.of(context)!.developmentOfMobileApps,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(children: [
                    Container(
                      width: 7.w,
                      height: 7.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).primaryColor),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      AppLocalizations.of(context)!.developmentOfWebApps,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ]),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(children: [
                    Container(
                      width: 7.w,
                      height: 7.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).primaryColor),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      AppLocalizations.of(context)!.uiuxDesign,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ]),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(children: [
                    Container(
                      width: 7.w,
                      height: 7.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).primaryColor),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      AppLocalizations.of(context)!.supportAndService,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ]),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(children: [
                    Container(
                      width: 7.w,
                      height: 7.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).primaryColor),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      AppLocalizations.of(context)!.outsourcingITSpecialists,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ]),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(children: [
                    Container(
                      width: 7.w,
                      height: 7.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).primaryColor),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      AppLocalizations.of(context)!.consulting,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
