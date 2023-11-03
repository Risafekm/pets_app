import 'package:flutter/material.dart';

class DeliveryPart extends StatelessWidget {
  const DeliveryPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // base container

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 9.8,
          clipBehavior: Clip.none,
          child: Row(
            children: [
              const SizedBox(width: 30),
              // image background circle
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green.shade100,
                ),
                //image adding
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/boy.webp'),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 55),
              const Text(
                'Maxim',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(width: 15),
        const Padding(
          padding: EdgeInsets.only(left: 15.0, right: 15),
          child: Divider(),
        ),
      ],
    );
  }
}
