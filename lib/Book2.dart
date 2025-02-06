import 'package:flutter/material.dart';
import 'Cart.dart';

class Book2 extends StatelessWidget {
  const Book2({super.key});

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
            Image.asset('assets/images/book2.jpg', height: 200),
            const SizedBox(height: 20),
            const Text(
              'The Lord of the Ring',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const Text(
              'By J.R.R. Tolkien',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 10),
            const Text(
              'The Lord of the Rings is a fantasy novel by J.R.R. Tolkien that tells the story of a group of heroes who try to destroy the One Ring and defeat the Dark Lord Sauron. The story takes place in Tolkien\'s fictional world of Middle-earth, which has its own history, languages, and races. ',
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
                        'title': 'The Lord of the Ring',
                        'author': 'J.R.R. Tolkien',
                        'price': 'Rs.1750.00',
                        'coverImagePath': 'assets/images/book2.jpg',
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
