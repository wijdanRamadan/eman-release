import 'package:eman/domain/qr_page/qr_page_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:eman/constants.dart';

class QRPageWidget extends StatefulWidget {
  const QRPageWidget({Key? key, required this.model}) : super(key: key);
  final QrPageModel model;
  @override
  _QRPageStateWidget createState() => _QRPageStateWidget();
}

class _QRPageStateWidget extends State<QRPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width.w,
      height: MediaQuery.of(context).size.height.h,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '${AppLocalizations.of(context)?.sharingQrSentence}',
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontSize: 18.sp),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '${AppLocalizations.of(context)?.androidQrCode}',
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                      color: Theme.of(context).primaryColor, fontSize: 18.sp),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 180.r,
                  height: 180.r,
                  child: RepaintBoundary(
                    child: QrImage(
                      data: widget.model.androidLink,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '${AppLocalizations.of(context)?.iosQrCode}',
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                      color: Theme.of(context).primaryColor, fontSize: 18.sp),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 180.r,
                  height: 180.r,
                  child: Container(
                    child: RepaintBoundary(
                      child: QrImage(
                        data: widget.model.iosLink,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
