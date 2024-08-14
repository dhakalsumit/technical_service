import 'package:flutter/material.dart';

class WorkersList extends StatefulWidget {
  const WorkersList({super.key});

  @override
  State<WorkersList> createState() => _WorkersListState();
}

class _WorkersListState extends State<WorkersList> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(itemBuilder: (context, index) {
      return Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius:
                  const BorderRadius.only(topLeft: Radius.circular(90)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Transform(
                  transform: Transform.translate(
                    offset: Offset(0, -25),
                  ).transform,
                  child: Center(
                    child: Image.asset(
                      "images/sudippng.png",
                      width: 150,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 200,
            child: Container(
              margin: const EdgeInsets.all(10),
              height: 100,
              width: 300,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 237, 234, 234),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [],
              ),
            ),
          )
        ],
      );
    });
  }
}
