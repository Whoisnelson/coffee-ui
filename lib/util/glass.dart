import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class GlassBox extends StatelessWidget {
  const GlassBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      height: 150,
      width: 383,
      child: Stack(
        children: [
          // BLUR
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(),
            ),
          ),
          // GRADIENT
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withOpacity(0.4),
                      Colors.white.withOpacity(0.1),
                    ])),
          ),
          // CHILD
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Cappuccino',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'With Oat Milk',
                      style: TextStyle(color: Colors.grey.shade900),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.deepOrangeAccent.shade200,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          '4.5',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          '(6.985)',
                          style: TextStyle(
                              color: Colors.grey.shade300, fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade900),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  const Text('🥔'),
                                  Text(
                                    'Coffee',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey.shade400),
                                  )
                                ],
                              ),
                            )),
                        const SizedBox(width: 10),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade900),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  const Text('🥛'),
                                  Text(
                                    'Milk',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey.shade400),
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade900),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            'Medium Roasted',
                            style: TextStyle(
                                fontSize: 11, color: Colors.grey.shade400),
                          ),
                        )),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
