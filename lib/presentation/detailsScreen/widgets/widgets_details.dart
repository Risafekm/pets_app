import 'package:flutter/material.dart';
import 'package:pets_app/domain/models/searchListviewScreen/search_model.dart';

BoxDecoration decorationDetails() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(
          offset: const Offset(7, 7),
          color: Colors.grey.shade400,
          blurRadius: 16,
          spreadRadius: 0,
          blurStyle: BlurStyle.normal),
    ],
  );
}

//price text

Widget priceText({required SearchModel datamodel}) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0, right: 10),
    child: Text(
      datamodel.price,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
  );
}

//title text

Widget titleText({required SearchModel datamodel}) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0, right: 10),
    child: Text(
      datamodel.title,
      maxLines: 1,
      style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.ellipsis),
    ),
  );
}

// location icon,text,date and divider

Widget locationDate({required SearchModel datamodel}) {
  return Column(
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
      const Divider(),
    ],
  );
}
