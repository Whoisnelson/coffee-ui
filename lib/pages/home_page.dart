import 'package:demo/pages/welcome_page.dart';
import 'package:demo/util/buttons.dart';
import 'package:demo/util/glass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      child: Image.asset(
                          'lib/images/photo-1494314671902-399b18174975.webp'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const WelcomePage()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(13),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.grey.shade400,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Positioned(bottom: 0, child: GlassBox()),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: Row(
                      children: [
                        Text(
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[500]),
                            'Description')
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.grey[5]),
                        text:
                            'A cappuccino is a coffee-based drink made primarily from expresso and milk'),
                    TextSpan(
                        text: '   ...Read more',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrangeAccent.shade200))
                  ])),
                  const SizedBox(height: 20),
                  Text(
                    'Size',
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Button(text: 'S', color: Colors.transparent),
                      Button(text: 'M', color: Colors.grey.shade800),
                      Button(text: 'L', color: Colors.grey.shade800),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Price',
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                            const Text('\$4.20',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.orange.shade900,
                              borderRadius: BorderRadius.circular(15)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 13, horizontal: 70),
                            child: Text(
                              'Buy Now',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
