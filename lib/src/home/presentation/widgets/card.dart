import 'package:flutter/material.dart';


Widget algoCard(BuildContext context, int index, dynamic algorithm, VoidCallback? ontap) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.1,
    margin: const EdgeInsetsDirectional.only(top: 10, bottom: 10),
    padding: const EdgeInsetsDirectional.all(10),
    decoration: BoxDecoration(
        color: const Color(0xff3E3D44),
        borderRadius: BorderRadius.circular(10)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 12, 12, 14),
                backgroundImage: AssetImage(algorithm[index].imagePath)),
            const SizedBox(width: 20),
            Text(algorithm[index].label,
                style: const TextStyle(color: Colors.white)),
          ],
        ),
        InkWell(
          onTap: ontap,
          child: const Icon(
            Icons.info,
            color: Colors.orange,
          ),
        )
      ],
    ),
  );
}
