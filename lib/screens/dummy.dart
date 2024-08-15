import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpertCard extends StatelessWidget {
  final String name;
  final String specialty;
  final double rating;
  final int reviewCount;
  final int hourlyRate;

  final Color backgroundColor;

  const ExpertCard({
    Key? key,
    required this.name,
    required this.specialty,
    required this.rating,
    required this.reviewCount,
    required this.hourlyRate,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      itemBuilder: (context, index) => Container(
        margin: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Container(
              width: 200,
              decoration: BoxDecoration(
                color: backgroundColor,
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
                      offset: const Offset(0, -25),
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
              bottom: 0,
              child: Container(
                width: 200,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const  SizedBox(height: 4),
                      Row(
                        children: [
                          const Icon(Icons.check_circle,
                              color: Colors.green, size: 16),
                         const SizedBox(width: 4),
                          Text(specialty,
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey[600])),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 16),
                          const SizedBox(width: 4),
                          Text('$rating (${reviewCount}k)',
                              style: const TextStyle(fontSize: 14)),
                          const Spacer(),
                          Text('\$$hourlyRate/Hr',
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
