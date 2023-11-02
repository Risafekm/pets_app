import 'package:flutter/material.dart';
import 'package:pets_app/domain/models/pet_model.dart';
import 'package:pets_app/presentation/homeScreen/widgets/widgets_home.dart';

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
          return Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
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
                    decoration: circleAvatarDecoration(index,
                        image: petModel[index].image),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Text(
                      petModel[index].name,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
