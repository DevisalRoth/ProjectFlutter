import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  ProductCart(
      {required this.name,
      required this.price,
      required this.disPrice,
      required this.image,
      Key? key})
      : super(key: key);
  String name;
  double price, disPrice;
  String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          height: 200,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(image))),
        ),
        Positioned(
          bottom: 4,
          left: 20,
          child: Column(
            children: [
              Text(
                name,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    name,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
