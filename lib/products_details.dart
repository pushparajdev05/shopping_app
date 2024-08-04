import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  final Color backgroundColor;
  const ProductCard({super.key, required this.title, required this.price, required this.image, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      margin: const EdgeInsets.all(10),
      decoration:BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:15),
            child: Text(
            title,
            style: Theme.of(context).textTheme.titleSmall
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left:15),
            child: Text(price,
            style: Theme.of(context).textTheme.titleSmall),
          ),
          Center(child: Image.asset(image ,height: 130,))
        ],
      ),
    );
  }
}
