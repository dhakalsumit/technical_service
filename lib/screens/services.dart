import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  final List<String> images = [
    "images/painter.png",
    "images/AC-img.png",
    "images/plaster-img.png",
    "images/painter.png",
    "images/AC-img.png",
    "images/plaster-img.png",
  ];
  final List<String> text = [
    "Painting",
    "AC & \nFiltration",
    "Plaster &\n Cladding",
    "Painting",
    "AC & \nFiltration",
    "Plaster &\n Cladding"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      itemBuilder: (context, index) => Container(
        margin: const EdgeInsets.all(6),
        height: 120,
        width: 90,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 237, 234, 234),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(images[index]),
            Text(
              text[index],
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 95, 95, 95)),
            )
          ],
        ),
      ),
    );
  }
}
