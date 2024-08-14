import 'package:flutter/material.dart';
import 'package:tackles/screens/dummy.dart';
import 'package:tackles/screens/services.dart';
import 'package:tackles/screens/workers_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: Image.asset(
                    "images/sudippng.png",
                    height: 40,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "Hi, Sudip",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 95, 95, 95)),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notification_add_outlined))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Choose Your Magic ",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: const Color.fromARGB(193, 7, 2, 88)),
            ),
            Text(
              "Total 7 services ",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 95, 95, 95)),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 130,
              child: Services(),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Recommended for you",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: const Color.fromARGB(193, 7, 2, 88)),
            ),
            Text(
              "6 Workers available ",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 95, 95, 95)),
            ),
            const SizedBox(
              height: 300,
              child: ExpertCard(
                name: 'Sudip',
                backgroundColor: Colors.blue,
                hourlyRate: 200,
               
                rating: 5,
                reviewCount: 5,
                specialty: 'Plumber',
              ),
            ),
          ],
        ),
      )),
    );
  }
}
