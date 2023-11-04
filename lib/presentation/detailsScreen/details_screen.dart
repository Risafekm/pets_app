// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:pets_app/domain/models/searchListviewScreen/search_model.dart';
import 'package:pets_app/domain/reuseablewidget/appbar.dart';
import 'package:pets_app/presentation/detailsScreen/widgets/button_chat.dart';
import 'package:pets_app/presentation/detailsScreen/widgets/delivery_part.dart';
import 'package:pets_app/presentation/detailsScreen/widgets/imageview_details.dart';
import 'package:pets_app/presentation/detailsScreen/widgets/part_three_column.dart';
import 'package:pets_app/presentation/detailsScreen/widgets/part_two_column.dart';

class DetailsScreen extends StatelessWidget {
  SearchModel datamodel;
  DetailsScreen({
    Key? key,
    required this.datamodel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: MyAppBar(onTap: () => Navigator.pop(context))),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //imagePageView
            DetailsImageView(datamodel: datamodel),
            const SizedBox(height: 20),
            // part two Column
            PartTwoColumn(datamodel: datamodel),
            const SizedBox(height: 15),
            // part three Column
            PartThreeColumn(datamodel: datamodel),
            // Delivery part
            const DeliveryPart(),
            const SizedBox(height: 15),
            //ButtonPart
            const ButtonChat(),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
