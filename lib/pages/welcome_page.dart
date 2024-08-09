import 'package:demo/pages/home_page.dart';
import 'package:demo/util/category.dart';
import 'package:demo/util/coffee_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(10)),
            child: const Icon(Icons.menu)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade800),
                child: const Icon(Icons.person)),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: BottomNavigationBar(
          backgroundColor: Colors.grey.shade900,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: '')
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Text(
              "Find the best coffee for you",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 46),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.deepOrangeAccent.shade200,
                ),
                fillColor: Colors.grey.shade800,
                filled: true,
                hintText: 'find your coffee...',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade800)),
              ),
            ),
            const SizedBox(height: 20),
            Container(
                height: 50,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Categories(text: 'Cappuccino'),
                    Categories(text: 'Expresso'),
                    Categories(text: 'Latte'),
                    Categories(text: 'Black'),
                    Categories(text: 'Tea'),
                  ],
                )),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  child: const Coffee_tile(
                      imagePath:
                          'lib/images/photo-1494314671902-399b18174975.webp',
                      coffeeName: 'Cappuccino',
                      description: 'With Oat Milk',
                      price: '\$ 4.20'),
                ),
                const Coffee_tile(
                    imagePath:
                        'lib/images/demi-deherrera-L-sm1B4L1Ns-unsplash.jpg',
                    coffeeName: 'Cappuccino',
                    description: 'With Chocolate',
                    price: '\$ 3.14'),
                const Coffee_tile(
                    imagePath:
                        'lib/images/nathan-dumlao-r-KfktlyBL0-unsplash.jpg',
                    coffeeName: 'Cappuccino',
                    description: 'With Almond Milk',
                    price: '\$ 3.70')
              ],
            ))
          ],
        ),
      ),
    );
  }
}
