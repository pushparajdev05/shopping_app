import 'package:flutter/material.dart';
import 'global_variable.dart';
import 'products_details.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<String> filter = ["All", "Addidas", "Nike", "Bata"];
  int selectedFilter = 0;

  final border = const OutlineInputBorder(
      borderSide: BorderSide(
          color: Color.fromARGB(255, 0, 0, 0),
          width: 1.5,
          strokeAlign: BorderSide.strokeAlignCenter),
      borderRadius: BorderRadius.horizontal(left: Radius.circular(25)));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Text("Shoe\nCollection",
                    style: Theme.of(context).textTheme.titleMedium),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextField(
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    cursorColor: const Color.fromARGB(255, 34, 34, 34),
                    decoration: InputDecoration(
                        hintText: "Search",
                        enabledBorder: border,
                        focusedBorder: border,
                        prefixIcon: const Icon(Icons.search_outlined),
                        prefixIconColor: const Color.fromARGB(255, 34, 34, 34)),
                  ),
                ))
              ],
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filter.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedFilter = index;
                        });
                      },
                      child: Chip(
                        backgroundColor: filter[selectedFilter] == filter[index]
                            ? Theme.of(context).colorScheme.primary
                            : const Color.fromARGB(255, 233, 252, 255),
                        label: Text(filter[index]),
                        labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 15, 15, 15),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        shape: const RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color.fromARGB(255, 24, 24, 24),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        padding: const EdgeInsets.all(15),
                      ),
                    ),
                  );
                }),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return ProductCard(
                      title: product["title"] as String,
                      price: product["price"].toString(),
                      image: product["imageUrl"] as String,
                      backgroundColor: index.isEven
                          ? const Color.fromARGB(255, 200, 255, 251)
                          : const Color.fromARGB(255, 144, 225, 255),
                    );
                  }))
        ],
      ),
    );
  }
}
