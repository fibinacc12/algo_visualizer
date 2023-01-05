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
            children: [
              headerWidget(context, algorithm),
            ],
          ),
        ),
      ),
    );
  }
}
