import 'package:flutter/material.dart';
import 'package:pets_app/domain/models/searchListviewScreen/search_model.dart';
import 'package:pets_app/presentation/searchListviewScreen/widgets/widgets_search.dart';

class ListviewWidget extends StatelessWidget {
  const ListviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 570,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: cageModel.length,
          itemBuilder: (context, index) {
            final SearchModel cage = cageModel[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  /// base container

                  Container(
                    height: 150,
                    decoration: decorationListView(),
                  ),

                  /// image showing

                  Positioned(
                    bottom: 20,
                    left: 10,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(cage.image),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    top: 0,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      height: 100,
                      width: MediaQuery.of(context).size.width / 1.58,
                      color: Colors.amber.shade50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cage.title,
                            maxLines: 1,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                overflow: TextOverflow.ellipsis),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            cage.price,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            cage.description,
                            maxLines: 2,
                            style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                overflow: TextOverflow.ellipsis),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              const Icon(
                                Icons.place,
                                color: Colors.black54,
                                size: 20,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                cage.location,
                                maxLines: 2,
                                style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
