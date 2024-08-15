import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final List<String> images = [
    "images/dentist.png",
    "images/dentist.png",
    "images/dentist.png",
    "images/dentist.png",
    "images/dentist.png",
    "images/dentist.png",
  ];
  final List<String> text = [
    "Dentist",
    "Dentist",
    "Dentist",
    "Dentist",
    "Dentist",
    "Dentist",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      itemBuilder: (context, index) => Container(
        height: 100,
        width: 90,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Icon(
              Icons.medical_services_outlined,
              color: Color.fromARGB(255, 102, 95, 95),
              size: 40,
            ),
            Text(
              text[index],
              textAlign: TextAlign.center,
              style: const TextStyle(
                  height: 3,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 95, 95, 95)),
            ),
          ],
        ),
      ),
    );
  }
}
