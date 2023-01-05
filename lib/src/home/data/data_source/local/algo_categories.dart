import '../../model/algo.dart';
import '../../model/algo_category.dart';

List<AlgoCategory> categories = [
  AlgoCategory(id: 1, label: "Computer science"),
  AlgoCategory(id: 2, label: "Data analysis"),
  AlgoCategory(id: 3, label: "Machine learning"),
  AlgoCategory(id: 4, label: "Cryptography"),
  AlgoCategory(id: 5, label: "Robotics"),
  AlgoCategory(id: 6, label: "Bioinformatics"),
];

List<Algorithm> algosByCategory = [
  Algorithm(id: 1, label: "sorting", category: 1),
  Algorithm(id: 2, label: "searching", category: 1),
  Algorithm(id: 3, label: "graph traversal", category: 1),
  Algorithm(id: 4, label: "string manipulation", category: 1),

  Algorithm(id: 5, label: "statistical analysis", category: 2),
  Algorithm(id: 6, label: "machine learning", category: 2),
  Algorithm(id: 7, label: "data mining", category: 2),

  Algorithm(id: 8, label: "classification", category: 3),
  Algorithm(id: 9, label: "regression", category: 3),
  Algorithm(id: 10, label: "clustering", category: 3),
  Algorithm(id: 11, label: "dimensionality reduction", category: 3),

  Algorithm(id: 12, label: "encryption", category: 4),
  Algorithm(id: 13, label: "decryption", category: 4),
  Algorithm(id: 14, label: "key exchange", category: 4),

  Algorithm(id: 15, label: "path planning", category: 5),
  Algorithm(id: 16, label: "localization", category: 5),
  Algorithm(id: 17, label: "motion control", category: 5),

  Algorithm(id: 18, label: "sequence alignment", category: 6),
  Algorithm(id: 19, label: "gene prediction", category: 6),
  Algorithm(id: 20, label: "protein folding", category: 6),

];
