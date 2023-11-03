import 'package:flutter/material.dart';
import 'package:pets_app/domain/models/searchListviewScreen/search_model.dart';

class PartTwoColumn extends StatelessWidget {
  const PartTwoColumn({
    super.key,
    required this.datamodel,
  });

  final SearchModel datamodel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //price text
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 10),
          child: Text(
            datamodel.price,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 10),
        //title text
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 10),
          child: Text(
            datamodel.title,
            maxLines: 1,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                overflow: TextOverflow.ellipsis),
          ),
        ),
        const SizedBox(height: 15),
        //location icon ,text and Date
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Location Icon and text
                  Row(
                    children: [
                      const Icon(
                        Icons.place,
                        color: Colors.black54,
                        size: 20,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        datamodel.location,
                        maxLines: 2,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  Text(
                    datamodel.date,
                    maxLines: 1,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        overflow: TextOverflow.ellipsis),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 6),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15),
              child: Divider(),
            ),
          ],
        ),
      ],
    );
  }
}
