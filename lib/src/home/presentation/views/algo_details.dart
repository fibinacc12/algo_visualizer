import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:algo_visualizer/src/home/data/model/algo.dart';

import '../widgets/header.dart';

class AlgoDetails extends StatelessWidget {
  final Algorithm algorithm;
  const AlgoDetails({
    Key? key,
    required this.algorithm,
  }) : super(key: key);

  static const String routeName = "/algo_details";

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headerWidget(context, algorithm),
              Expanded(
                  child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: details(),
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget details() {
    return Column(
      children: [
        title("What are ${algorithm.label} algorithms ?"),
        text(
            "Sorting algorithms are a fundamental computer science concept that are used to arrange a list of items in a specific order (e.g., ascending or descending). There are many different sorting algorithms, each with its own set of strengths and weaknesses."),
        title("How ${algorithm.label} Algorithms Work ?"),
        text(
            "Sorting algorithms work by comparing elements in a list and swapping them if they are out of order. The specific steps that a sorting algorithm follows depend on the type of algorithm being used. Some sorting algorithms, such as bubble sort and insertion sort, operate on the list in-place and have a time complexity of O(n^2), which means that they take longer to run as the size of the list increases. Other algorithms, such as merge sort and quick sort, operate on a copy of the list and have a time complexity of O(n log n), which means that they are more efficient for larger lists."),
        title("Common ${algorithm.label} Algorithms"),
        text("""
Some common sorting algorithms include:

Bubble sort: This algorithm repeatedly compares adjacent elements and swaps them if they are out of order. It is simple to implement but has a time complexity of O(n^2), which makes it inefficient for large lists.

Insertion sort: This algorithm works by building up a sorted list one element at a time. It is efficient for small lists but has a time complexity of O(n^2) for larger lists.

Merge sort: This algorithm works by dividing the list into smaller sublists, sorting each sublist, and then merging the sorted sublists back together. It has a time complexity of O(n log n) and is efficient for large lists.

Quick sort: This algorithm works by selecting a pivot element and partitioning the list around it. It has a time complexity of O(n log n) and is efficient for large lists, but it can be less stable than other algorithms.
"""),
        title("Choosing the Right ${algorithm.label} Algorithm"),
        text(
            "When choosing a sorting algorithm, it is important to consider the size of the list, the required stability of the sort, and the available resources (e.g., memory and processing power). In general, algorithms with a time complexity of O(n log n) are more efficient for large lists, but simpler algorithms such as insertion sort can be faster for small lists.")
      ],
    );
  }

  Widget text(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white, letterSpacing: 0.8),
      textAlign: TextAlign.justify,
    );
  }

  Widget title(String title) => Padding(
        padding: const EdgeInsetsDirectional.only(top: 20, bottom: 20),
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
      );
}
