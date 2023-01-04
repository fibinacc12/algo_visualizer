import 'dart:math';

import 'package:algo_visualizer/src/home/data/data_source/local/algo_categories.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static const String routeName = '/';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsetsDirectional.all(15),
          child: Column(
            children: [
              _header(),
              const SizedBox(height: 15),
              _searchFieldWidget(),
              const SizedBox(height: 15),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: algoCard(context))
            ],
          ),
        ),
      ),
    );
  }

  Widget algoCard(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsetsDirectional.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors
                          .primaries[Random().nextInt(Colors.primaries.length)]
                      [Random().nextInt(9) * 100]),
              child: Center(
                  child: Text(
                categories[index].label,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )),
            );
          }),
    );
  }

  Widget _searchFieldWidget() {
    return TextFormField(
      controller: _searchController,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          suffixIcon: const Icon(Icons.search),
          labelText: 'Search',
          labelStyle: const TextStyle(color: Colors.black87)),
    );
  }

  Widget _header() {
    return Row(
      children: const [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.blue,
        ),
        SizedBox(width: 10),
        Text(
          "Hello, Brahim",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
