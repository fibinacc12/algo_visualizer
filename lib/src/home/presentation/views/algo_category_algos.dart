import 'package:algo_visualizer/src/home/data/model/algo.dart';
import 'package:algo_visualizer/src/home/data/model/algo_category.dart';
import 'package:algo_visualizer/src/home/presentation/views/algo_details.dart';
import 'package:flutter/material.dart';

import 'package:algo_visualizer/src/home/data/data_source/local/algo_categories.dart';

import '../widgets/card.dart';
import '../widgets/header.dart';

class CategoryAlgos extends StatefulWidget {
  final AlgoCategory category;
  const CategoryAlgos({
    Key? key,
    required this.category,
  }) : super(key: key);

  static const String routeName = "/category_algos";

  @override
  State<CategoryAlgos> createState() => _CategoryAlgosState();
}

class _CategoryAlgosState extends State<CategoryAlgos> {
  late List<Algorithm> algorithms;

  List<Algorithm> _algos() {
    var algos = algosByCategory
        .where((element) => element.category == widget.category.id)
        .toList();
    setState(() {
      algorithms = algos;
    });
    return algorithms;
  }

  @override
  void initState() {
    super.initState();
    _algos();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff252429),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pop(true);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsetsDirectional.all(15),
          child: Column(
            children: [
              headerWidget(context, widget.category),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: algorithms.length,
                  itemBuilder: (context, index) {
                    return algoCard(context, index, algorithms, () {
                      Navigator.of(context).pushReplacementNamed(
                          AlgoDetails.routeName,
                          arguments: algorithms[index]);
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
