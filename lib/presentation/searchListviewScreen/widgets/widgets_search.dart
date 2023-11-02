import 'package:flutter/material.dart';

/// search TextField

Widget searchWidget() {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0),
    child: Container(
      height: 50,
      margin: const EdgeInsets.all(10),
      child: const TextField(
        decoration: InputDecoration(
          label: Text('Search....'),
          labelStyle: TextStyle(color: Colors.black54),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.green,
          ),
          border: OutlineInputBorder(),
        ),
      ),
    ),
  );
}

/// main title Search list page

Widget mainTextSearch({required String title}) {
  return Center(
    child: Text(
      title,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
    ),
  );
}

/// showed listView Count

Widget countList({required String countText}) {
  return Center(
    child: Text(
      countText,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    ),
  );
}

//decoration ListView

BoxDecoration decorationListView() {
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
