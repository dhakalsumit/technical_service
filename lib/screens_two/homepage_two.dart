import 'package:flutter/material.dart';
import 'package:tackles/screens_two/specialist.dart';

class HomepageTwo extends StatefulWidget {
  const HomepageTwo({super.key});

  @override
  State<HomepageTwo> createState() => _HomepageTwoState();
}

class _HomepageTwoState extends State<HomepageTwo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              height: size.height * 0.25,
              width: double.infinity,
              color: const Color.fromARGB(255, 240, 231, 231),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Hello Sudip",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 95, 95, 95)),
                  ),
                  Text(
                    "Find local doctors who Take \ncare of your health",
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 19, 19, 19)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SearchBar(
                    leading: const Icon(Icons.search),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4))),
                    hintText: "Search doctor by name or department",
                    hintStyle: const WidgetStatePropertyAll(TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color.fromARGB(215, 125, 124, 124))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Top Searched Specialists",
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 19, 19, 19)),
                  ),
                  const SizedBox(
                    height: 110,
                    child: MyWidget(),
                  ),
                  const Divider()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
