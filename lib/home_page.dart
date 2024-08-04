import 'package:flutter/material.dart';
import './card_page.dart';
import "./product_list.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  List<Widget> page = const [ProductList(), CardPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: IndexedStack(
          index: currentPage,
          children:page
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.amber,
          onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        currentIndex: currentPage,
        items:const  [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),
          label:"")
          ],
          
        )
        );
  }
}
