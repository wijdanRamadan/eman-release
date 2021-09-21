import 'package:cached_network_image/cached_network_image.dart';
import 'package:eman/domain/projects_page/project_page_card_content.dart';
import 'package:eman/domain/projects_page/project_reference_model.dart';
import 'package:eman/presentation/projects_page/project_reference_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

Widget projectcard(
    {context,
    required ProjectPageCardContentModel pageCardContentModel,
    required ProjectReferenceModel model}) {
  // ignore: unused_local_variable
  String csImagePath = pageCardContentModel.cs == '/'
      ? 'assets/images/cs_disabled.png'
      : 'assets/images/cs_enabled.png';
  return Container(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
          child: CachedNetworkImage(
            width: MediaQuery.of(context).size.width,
            imageUrl: pageCardContentModel.imageUri,
            placeholder: (context, url) => Container(
                width: 100.w,
                height: 100.w,
                child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Image(
              image: Image.asset('assets/images/placeholder.jpg').image,
            ),
          ),

          /*Container(
            width: MediaQuery.of(context).size.width,
            height: 100.h,
            decoration: BoxDecoration(
              color: Color(0xFF090F13),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: 
                Image.network(pageCardContentModel.imageUri).image,
              ),
              borderRadius: BorderRadius.circular(8),
            ),*/
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
          child: Card(
            color: Theme.of(context).primaryColor,
            child: ExpansionTile(
              title: Text(
                pageCardContentModel.title,
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                pageCardContentModel.content,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(color: Colors.white),
              ),
              trailing: Transform(
                transform: Matrix4.translationValues(8.0, 0.0, 0.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (pageCardContentModel.mobileProject)
                            Image(
                                image:
                                    Image.asset('assets/images/mobile_icon.png')
                                        .image),
                          if (pageCardContentModel.webProject)
                            Image(
                                image: Image.asset('assets/images/web_icon.png')
                                    .image),
                          InkWell(
                            child: Image(
                              image: Image.asset(csImagePath).image,
                            ),
                            onTap: () {
                              launch(pageCardContentModel.cs);
                            },
                          ),
                          if (pageCardContentModel.industry
                              .toLowerCase()
                              .contains('otomotive'))
                            Icon(Icons.car_rental, color: Colors.white),
                          if (pageCardContentModel.industry
                              .toLowerCase()
                              .contains('energy'))
                            Icon(Icons.flash_on, color: Colors.white),
                          if (pageCardContentModel.industry
                              .toLowerCase()
                              .contains('banking'))
                            Icon(Icons.monetization_on, color: Colors.white),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              children: [
                projectReferenceWidget(
                    model: pageCardContentModel.referenceModel,
                    context: context)
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
