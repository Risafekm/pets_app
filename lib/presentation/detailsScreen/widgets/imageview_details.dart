import 'package:flutter/material.dart';
import 'package:pets_app/domain/models/searchListviewScreen/search_model.dart';
import 'package:pets_app/presentation/detailsScreen/widgets/widgets_details.dart';

class DetailsImageView extends StatelessWidget {
  const DetailsImageView({
    super.key,
    required this.datamodel,
  });

  final SearchModel datamodel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 8, right: 8),

      /// Base of Image showing area

      child: Container(
        height: 220,
        decoration: decorationDetails(),
        child: PageView(
          children: [
            Container(
              height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(datamodel.image)),
              ),
            ),
            Container(
              height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(datamodel.image)),
              ),
            ),
            Container(
              height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(datamodel.image)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
