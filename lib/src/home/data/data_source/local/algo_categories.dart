import '../../model/algo.dart';
import '../../model/algo_category.dart';

String path = "assets/images";

List<AlgoCategory> categories = [
  AlgoCategory(id: 1, label: "Computer science", imagePath: "$path/cs.jpg"),
  AlgoCategory(
      id: 2, label: "Data analysis", imagePath: "$path/data_analysis.jpg"),
  AlgoCategory(
      id: 3,
      label: "Machine learning",
      imagePath: "$path/machine_learning.jpg"),
  AlgoCategory(id: 4, label: "Cryptography", imagePath: "$path/crypto.jpg"),
  AlgoCategory(id: 5, label: "Robotics", imagePath: "$path/robotics.jpg"),
  AlgoCategory(
      id: 6, label: "Bioinformatics", imagePath: "$path/bioinformatics.jpg"),
];

List<Algorithm> algosByCategory = [
  Algorithm(id: 1, label: "sorting", category: 1, imagePath: "$path/sorting.png"),
  Algorithm(id: 2, label: "searching", category: 1, imagePath: "$path/searching.png"),
  Algorithm(id: 3, label: "graph traversal", category: 1, imagePath: "$path/graph_traversal.png"),
  Algorithm(id: 4, label: "string manipulation", category: 1, imagePath: "$path/string_manipulation.jpg"),
  Algorithm(id: 5, label: "statistical analysis", category: 2, imagePath: "$path/statistical_analysis.jpg"),
  Algorithm(id: 6, label: "machine learning", category: 2, imagePath: "$path/machine_learning.jpg"),
  Algorithm(id: 7, label: "data mining", category: 2, imagePath: "$path/data_mining.jpg"),
  Algorithm(id: 8, label: "classification", category: 3, imagePath: "$path/classification.jpg"),
  Algorithm(id: 9, label: "regression", category: 3, imagePath: "$path/regression.jpg"),
  Algorithm(id: 10, label: "clustering", category: 3, imagePath: "$path/clustering.jpg"),
  Algorithm(
      id: 11, label: "dimensionality reduction", category: 3, imagePath: "$path/dimensionality_reduction.jpg"),
  Algorithm(id: 12, label: "encryption", category: 4, imagePath: "$path/encryption.png"),
  Algorithm(id: 13, label: "decryption", category: 4, imagePath: "$path/encryption.png"),
  Algorithm(id: 14, label: "key exchange", category: 4, imagePath: "$path/key_exchange.jpg"),
  Algorithm(id: 15, label: "path planning", category: 5, imagePath: "$path/path_planning.png"),
  Algorithm(id: 16, label: "localization", category: 5, imagePath: "$path/localization.jpg"),
  Algorithm(id: 17, label: "motion control", category: 5, imagePath: "$path/motion_control.png"),
  Algorithm(id: 18, label: "sequence alignment", category: 6, imagePath: "$path/sequence_alignment.png"),
  Algorithm(id: 19, label: "gene prediction", category: 6, imagePath: "$path/gene_prediction.jpg"),
  Algorithm(id: 20, label: "protein folding", category: 6, imagePath: "$path/protein_folding.jpg"),
];
