// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable, unused_local_variable
import 'package:flutter/material.dart';
import 'package:pets_app/domain/models/homeScreen/pet_model.dart';
import 'package:pets_app/domain/models/searchListviewScreen/search_model.dart';
import 'package:pets_app/presentation/homeScreen/widgets/widgets_home.dart';
import 'package:pets_app/presentation/searchListviewScreen/widgets/listview_widget.dart';
import 'package:pets_app/presentation/searchListviewScreen/widgets/widgets_search.dart';

class SearchListScreen extends StatelessWidget {
  PetModel dataModel;

  SearchListScreen({
    Key? key,
    required this.dataModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: appBar(onTap: () => Navigator.pop(context)),
        body: SingleChildScrollView(
          child: Column(
            children: [
              searchWidget(),
              const SizedBox(height: 10),
              mainTextSearch(title: dataModel.name),
              countList(countText: '${cageModel.length} Ads Found'),
              const SizedBox(height: 10),
              const ListviewWidget(),
              const SizedBox(height: 40),
            ],
          ),
        ));
  }
}
