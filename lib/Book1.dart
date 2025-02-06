import 'package:flutter/material.dart';
import 'Cart.dart';

class Book1 extends StatelessWidget {
  const Book1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F1E6),
      appBar: AppBar(
        title: const Text('Book Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/book1.jpg', height: 200),
            const SizedBox(height: 20),
            const Text(
              'Harry Potter',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const Text(
              'By J.K. Rowling',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 10),
            const Text(
              'Harry Potter and the Prisoner of Azkaban is the third book in J.K. Rowling\'s Harry Potter series. It follows Harry Potter in his third year at Hogwarts School of Witchcraft and Wizardry',
              style: TextStyle(fontSize: 12),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Color.fromARGB(255, 202, 150, 83), width: 2),
                      foregroundColor: const Color.fromARGB(255, 202, 150, 83),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Buy Now'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      cartController.addToCart({
                        'title': 'Harry Potter',
                        'author': 'J.K. Rowling',
                        'price': 'Rs.2100.00',
                        'coverImagePath': 'assets/images/book1.jpg',
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 202, 150, 83),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Add to Cart'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
