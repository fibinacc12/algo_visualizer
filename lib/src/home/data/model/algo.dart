import 'package:algo_visualizer/src/home/data/model/algo_category.dart';

class Algorithm {
  final int id;
  final String label;
  final AlgoCategory category;
  Algorithm({
    required this.id,
    required this.label,
    required this.category,
  });
}
