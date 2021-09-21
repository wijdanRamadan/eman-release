import 'package:eman/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:eman/main.dart';

import 'address_widget.dart';

class CredentialsPage extends StatefulWidget {
  const CredentialsPage({Key? key}) : super(key: key);

  @override
  _CredentialsPageState createState() => _CredentialsPageState();
}

class _CredentialsPageState extends State<CredentialsPage> {
  bool _visible = false;

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _visible = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8.0.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16.0.h,
                  ),
                  Text(
                    AppLocalizations.of(context)!
                        .companyInformation
                        .toUpperCase(),
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    height: 16.0.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.companyDescription,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        SizedBox(
                          height: 10.0.h,
                        ),
                        RichText(
                          text: TextSpan(
                              text:
                                  '${AppLocalizations.of(context)!.companyNumber}: ',
                              style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Theme.of(context).colorScheme.secondary),
                              children: [
                                TextSpan(
                                    text: ' 272 03 824',
                                    style:
                                        Theme.of(context).textTheme.bodyText1)
                              ]),
                        ),
                        RichText(
                          text: TextSpan(
                              text:
                                  '${AppLocalizations.of(context)!.taxNumber} :',
                              style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Theme.of(context).colorScheme.secondary),
                              children: [
                                TextSpan(
                                    text: 'CZ27203824',
                                    style:
                                        Theme.of(context).textTheme.bodyText1)
                              ]),
                        ),
                        SizedBox(
                          height: 10.0.h,
                        ),
                        RichText(
                          text: TextSpan(
                              text:
                                  '${AppLocalizations.of(context)!.dataBoxID} : ',
                              style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Theme.of(context).colorScheme.secondary),
                              children: [
                                TextSpan(
                                    text: 'yax32fa',
                                    style:
                                        Theme.of(context).textTheme.bodyText1)
                              ]),
                        ),
                        RichText(
                          text: TextSpan(
                              text:
                                  '${AppLocalizations.of(context)!.dunsNumber} : ',
                              style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Theme.of(context).colorScheme.secondary),
                              children: [
                                TextSpan(
                                    text: '495453154',
                                    style:
                                        Theme.of(context).textTheme.bodyText1)
                              ]),
                        ),
                        RichText(
                            text: TextSpan(
                          text:
                              '${AppLocalizations.of(context)!.emanProfileSentence} ',
                          style: Theme.of(context).textTheme.bodyText1,
                          children: [
                            TextSpan(
                                text: '${AppLocalizations.of(context)!.link}',
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(
                                        MyApp.getLocal(context) == Locale('en')
                                            ? COMPANY_PROFILE_LINK_EN
                                            : COMPANY_PROFILE_LINK_CS);
                                  })
                          ],
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.0.h,
            ),
            Divider(
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(
              height: 16.0.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppLocalizations.of(context)!.bankAccount.toUpperCase(),
                      style: Theme.of(context).textTheme.headline1),
                  SizedBox(
                    height: 16.0.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                                '${AppLocalizations.of(context)!.bankAccount} : ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary)),
                            Expanded(
                              child: Text(' 591864002/5500 ',
                                  style: Theme.of(context).textTheme.bodyText1),
                            )
                          ],
                        ),
                        RichText(
                          text: TextSpan(
                              text: '${AppLocalizations.of(context)!.iban} : ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                              children: [
                                TextSpan(
                                    text: 'CZ2455000000000591864002',
                                    style:
                                        Theme.of(context).textTheme.bodyText1)
                              ]),
                        ),
                        RichText(
                          text: TextSpan(
                              text: '${AppLocalizations.of(context)!.swift} :',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                              children: [
                                TextSpan(
                                    text: 'RZBCCZPP',
                                    style:
                                        Theme.of(context).textTheme.bodyText1)
                              ]),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16.0.h,
            ),
            Divider(
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(
              height: 16.0.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.stockMarket,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    height: 16.0.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        AnimatedOpacity(
                          opacity: _visible ? 1.0 : 0.0,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInCirc,
                          child: Container(
                              width: 150.w,
                              height: 100.h,
                              child: Image.asset('assets/images/px_start.png')),
                        ),
                        SizedBox(
                          width: 10.0.w,
                        ),
                        Expanded(
                          child: Text(AppLocalizations.of(context)!
                              .stockMarketDescription),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16.0.h,
            ),
            Divider(
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(
              height: 16.0.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.certification,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    height: 16.0.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        AnimatedOpacity(
                          opacity: _visible ? 1.0 : 0.0,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInCirc,
                          child: Container(
                            width: 150.w,
                            height: 100.h,
                            child: Image.asset('assets/images/TUV.png'),
                          ),
                        ),
                        SizedBox(
                          width: 10.0.w,
                        ),
                        Expanded(
                          child: Text(AppLocalizations.of(context)!
                              .certificationDescription),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16.0.h,
            ),
            Divider(
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(
              height: 16.0.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppLocalizations.of(context)!.emanAddress.toUpperCase(),
                      style: Theme.of(context).textTheme.headline1),
                  SizedBox(
                    width: 20.0.w,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        AnimatedOpacity(
                          opacity: _visible ? 1.0 : 0.0,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInCirc,
                          child: AdressWidget(
                              place: 'EMAN EUROPE',
                              companyName: 'eMan a.s.',
                              adress:
                                  'U Pergamenky 1145/12 170 00 Praha 7 Czech Republic',
                              phoneNumber: '+420 222 202 222',
                              email: 'info@emanprague.com'),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        AnimatedOpacity(
                          opacity: _visible ? 1.0 : 0.0,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInCirc,
                          child: AdressWidget(
                            place: 'EMAN NORTH AMERICA',
                            companyName: 'eMan Solutions LLC',
                            adress:
                                'The Cannon Houston 1334 Brittmoore Rd Houston, TX 77043 United States of America',
                            phoneNumber: '+1 (346) 232 2867',
                            email: 'hello@emanglobal.com',
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
