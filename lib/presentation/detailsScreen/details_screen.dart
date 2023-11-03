// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:pets_app/domain/models/searchListviewScreen/search_model.dart';
import 'package:pets_app/presentation/detailsScreen/widgets/imageview_details.dart';
import 'package:pets_app/presentation/homeScreen/widgets/widgets_home.dart';

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
            children: [
              DetailsImageView(datamodel: datamodel),
            ],
          ),
        ));
  }
}
