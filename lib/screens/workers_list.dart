import 'package:flutter/material.dart';

class WorkersList extends StatefulWidget {
  const WorkersList({super.key});

  @override
  State<WorkersList> createState() => _WorkersListState();
}

class _WorkersListState extends State<WorkersList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return PageView.builder(itemBuilder: (context, index) {
      return Stack(
        children: [
          Positioned(
            top: 10,
            left: 30,
            child: Container(
              height: 200,
              color: Colors.red,
            ),
          ),
          Image.asset("images/sudippng.png"),
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
