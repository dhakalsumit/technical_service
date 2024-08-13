import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> images = [
    "images/painting.png",
    "images/AC.png",
    "images/plaster.png",
  ];
  final List<String> testimonalsimage = [
    "images/tackles-logo.png",
    "images/tackles-logo.png",
    "images/tackles-logo.png",
  ];
  final List<String> text1 = [
    "Painting",
    "Air Conditioning & Filtration",
    "Plaster & Cladding"
  ];
  final List<String> text2 = [
    "If you’re looking for painting service, we offer expert  consultation on colours, materials and budgets to make sure you get what you want. Our professionals are highly skilled and will deliver a satisfying painting experience.",
    "Tackles has full service air filtration and conditioning expertise, we are equipped with the right tools and people to make sure that you would be in adequate temperature and breathe clean air.",
    "Tackles will take care of your plaster and cladding work on both interior and exterior part of your house, appartment or villa with full professionality. Whether it is a leaking celling or damaged floor/wall, our professionals will fix it with best result.",
  ];
  final List<String> testimonals = [
    "testimonals1",
    "testimonals2",
    "testimonals3",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Image.asset("images/tackles-logo.png"),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.blue,
              )),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                constraints: BoxConstraints(
                  minHeight: size.height * 0.3,
                  maxHeight: size.height * 0.4,
                ),
                child: PageView.builder(itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        color: index % 2 == 0 ? Colors.red : Colors.blue,
                        child: Image.network(
                          "https://th.bing.com/th/id/OIP.-wN0wbPdy_iA0uBOO89gNwHaFA?rs=1&pid=ImgDetMain",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                          top: 100,
                          left: 30,
                          child: Container(
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            width: size.width / 1.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "Professional service marketplace",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                  textAlign: TextAlign.center,
                                ),
                                const Divider(
                                  height: 20,
                                  thickness: 1.5,
                                ),
                                Text(
                                  "Hire a plumber in Dubai",
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      MaterialButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        color: Color.fromARGB(255, 13, 3, 122),
                                        onPressed: () {},
                                        child: Text("Get started",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge
                                                ?.copyWith(
                                                    color: Colors.white)),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      MaterialButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        color: Color.fromARGB(255, 13, 3, 122),
                                        onPressed: () {},
                                        child: Text(
                                          "Get started",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(color: Colors.white),
                                        ),
                                      ),
                                    ]),
                                const SizedBox(
                                  height: 12,
                                )
                              ],
                            ),
                          ))
                    ],
                  );
                }),
              ),
              const Center(
                  child: Text("What We Can Do?",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87))),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Our Services",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Tackles is a leading of A-grade handyman providing company. Any repair or decoration work, whether it be Plumbing, Painting, Airconditioning, Floor and Wall fixing, and so on, Tackles is there for you.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.only(
                        right: 20, bottom: 10, top: 10, left: 10),
                    padding: EdgeInsets.all(10),
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: const Offset(3, 2),
                          // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          images[index],
                          height: 100,
                        ),
                        Text(
                          text1[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: 300,
                            child: Text(
                              text2[index],
                              textAlign: TextAlign.center,
                            ))
                      ],
                    ),
                  ),
                  itemCount: 3,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Center(
                  child: Text("what people say ?",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87))),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Testimonials",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 300,
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.only(
                        right: 20, bottom: 10, top: 10, left: 10),
                    padding: EdgeInsets.all(10),
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: const Offset(0, 2),
                          // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          testimonalsimage[index],
                          height: 100,
                        ),
                        SizedBox(
                            width: 300,
                            child: Text(
                              text2[index],
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          text1[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  itemCount: 3,
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Color.fromARGB(255, 1, 88, 160),
                child: const Padding(
                  padding: EdgeInsets.only(left: 80),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.visibility,
                            color: Colors.white,
                          ),
                          VerticalDivider(),
                          Column(
                            children: [
                              Text(
                                "Visit Us",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "Dubai, United Arab Emirates",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromARGB(255, 184, 180, 180)),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.email,
                            color: Colors.white,
                          ),
                          VerticalDivider(),
                          Column(
                            children: [
                              Text(
                                "    Email Us",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "info@tackles.ae",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 184, 180, 180)),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                          VerticalDivider(),
                          Column(
                            children: [
                              Text(
                                "     Call Us",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "9826354714",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 184, 180, 180)),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "© 2018 - 2024 Tackles Technical LLC. All Rights Reserved",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              Text(
                "Powered by PRACAS INFOSYS",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
