import 'package:flutter/material.dart';
import 'Cart.dart'; 

class Book3 extends StatelessWidget {
  const Book3({super.key});

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
            Image.asset('assets/images/book3.jpg', height: 200),
            const SizedBox(height: 20),
            const Text(
              'Sherlock Holmes',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const Text(
              'By Sir Arthur Conan Doyle',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 10),
            const Text(
              'Sherlock Holmes is a fictional detective created by Sir Arthur Conan Doyle, renowned for his exceptional powers of observation and deduction, often referred to as a "consulting detective" who lives at 221B Baker Street in Victorian London, solving complex cases with the help of his companion, Dr. John Watson, who narrates the stories; he first appeared in the novel "A Study in Scarlet" (1887) and is considered one of the most iconic literary characters in history. ',
              style: TextStyle(fontSize: 12),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                          color: Color.fromARGB(255, 202, 150, 83), width: 2),
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
                        'title': 'Sherlock Holmes',
                        'author': 'Sir Arthur Conan Doyle',
                        'price': 'Rs.2100.00',
                        'coverImagePath': 'assets/images/book3.jpg',
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
