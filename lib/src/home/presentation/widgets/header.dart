  import 'package:flutter/material.dart';


Widget headerWidget(BuildContext context, dynamic category) {
    return Container(
      height: MediaQuery.of(context).size.height * .2,
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
            image: AssetImage(category.imagePath), fit: BoxFit.cover),
      ),
      child: Center(
        child: Text(
          category.label,
          style: const TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.black),
        ),
      ),
    );
  }
