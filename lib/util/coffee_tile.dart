import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Coffee_tile extends StatelessWidget {
  final String imagePath;
  final String coffeeName;
  final String description;
  final String price;
  const Coffee_tile({
    super.key,
    required this.imagePath,
    required this.coffeeName,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black54, borderRadius: BorderRadius.circular(10)),
        width: 200,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 240,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  )),
              const SizedBox(height: 18),
              Text(
                coffeeName,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade400),
              ),
              Text(
                description,
                style: TextStyle(color: Colors.grey.shade600),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepOrangeAccent.shade200),
                      child: const Icon(Icons.add))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
