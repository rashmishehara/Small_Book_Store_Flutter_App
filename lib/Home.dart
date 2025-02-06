import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Book1.dart';
import 'Book2.dart';
import 'Book3.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Book> books = const [
    Book(
      title: 'Harry Potter',
      author: 'By J.K. Rowling',
      price: 'Rs.2600.00',
      coverImagePath: 'assets/images/book1.jpg',
      description:
          'Harry Potter and the Prisoner of Azkaban is the third book in J.K. Rowling\'s Harry Potter series. It follows Harry Potter in his third year at Hogwarts School of Witchcraft and Wizardry',
    ),
    Book(
      title: 'The Lord of the Ring',
      author: 'By J.R.R. Tolkien',
      price: 'Rs.1750.00',
      coverImagePath: 'assets/images/book2.jpg',
      description:
          'The Lord of the Rings is a fantasy novel by J.R.R. Tolkien that tells the story of a group of heroes who try to destroy the One Ring and defeat the Dark Lord Sauron. The story takes place in Tolkien\'s fictional world of Middle-earth, which has its own history, languages, and races. ',
    ),
    Book(
      title: 'Sherlock Holmes',
      author: 'By Sir Arthur Conan Doyle',
      price: 'Rs.2100.00',
      coverImagePath: 'assets/images/book3.jpg',
      description:
          'Sherlock Holmes is a fictional detective created by Sir Arthur Conan Doyle, renowned for his exceptional powers of observation and deduction, often referred to as a "consulting detective" who lives at 221B Baker Street in Victorian London, solving complex cases with the help of his companion, Dr. John Watson, who narrates the stories; he first appeared in the novel "A Study in Scarlet" (1887) and is considered one of the most iconic literary characters in history. ',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F1E6),
      appBar: AppBar(title: const Text('Book Store')),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BookCard(book: books[index], index: index);
        },
      ),
    );
  }
}

class Book {
  final String title;
  final String author;
  final String price;
  final String coverImagePath;
  final String description;

  const Book({
    required this.title,
    required this.author,
    required this.price,
    required this.coverImagePath,
    required this.description,
  });
}

class BookCard extends StatelessWidget {
  final Book book;
  final int index;

  const BookCard({super.key, required this.book, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (index == 0) {
          Get.to(() => const Book1());
        } else if (index == 1) {
          Get.to(() => const Book2());
        } else if (index == 2) {
          Get.to(() => const Book3());
        }
      },
      child: Card(
        margin: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                book.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                book.author,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 10),
              Image.asset(
                book.coverImagePath,
                width: 150,
                height: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
              Text(
                book.price,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
