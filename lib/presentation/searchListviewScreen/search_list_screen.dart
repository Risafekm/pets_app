// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

import 'package:pets_app/domain/models/pet_model.dart';

class SearchListScreen extends StatelessWidget {
  PetModel model;

  SearchListScreen({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Search List Screen'),
      ),
    );
  }
}
