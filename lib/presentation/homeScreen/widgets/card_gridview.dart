// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:pets_app/domain/models/homeScreen/pet_model.dart';
import 'package:pets_app/presentation/homeScreen/widgets/widgets_home.dart';
import 'package:pets_app/presentation/searchListviewScreen/search_list_screen.dart';

class CardGridView extends StatelessWidget {
  const CardGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: 25),
        itemCount: 3,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          final datamodel = petModel[index];

          return Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SearchListScreen(
                          dataModel: datamodel,
                        )));
              },
              child: Container(
                height: 150,
                width: 150,
                padding: const EdgeInsets.all(25),
                decoration: containerDeroration(),
                child: Column(
                  children: [
                    Container(
                      height: 105,
                      width: 105,
                      decoration:
                          circleAvatarDecoration(index, image: datamodel.image),
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: Text(
                        datamodel.name,
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
