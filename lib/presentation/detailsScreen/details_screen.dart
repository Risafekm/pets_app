// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:pets_app/domain/models/searchListviewScreen/search_model.dart';
import 'package:pets_app/domain/reuseablewidget/appbar.dart';
import 'package:pets_app/presentation/detailsScreen/widgets/imageview_details.dart';
import 'package:pets_app/presentation/detailsScreen/widgets/widgets_details.dart';

class DetailsScreen extends StatelessWidget {
  SearchModel datamodel;
  DetailsScreen({
    Key? key,
    required this.datamodel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(onTap: () => Navigator.pop(context)),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailsImageView(datamodel: datamodel),
              const SizedBox(height: 20),

              //price text

              priceText(datamodel: datamodel),
              const SizedBox(height: 10),

              //title text
              titleText(datamodel: datamodel),

              const SizedBox(height: 15),

              //location icon ,text and Date

              locationDate(datamodel: datamodel),
            ],
          ),
        ));
  }
}
