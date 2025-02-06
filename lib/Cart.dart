import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = <Map<String, dynamic>>[].obs;

  void addToCart(Map<String, dynamic> book) {
    cartItems.add(book);
  }

  void removeFromCart(int index) {
    cartItems.removeAt(index);
  }
}

final CartController cartController = Get.put(CartController());

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F1E6),
      appBar: AppBar(
        title: const Text('Your Cart'),
        backgroundColor: const Color.fromARGB(255, 254, 201, 132),
        elevation: 0,
      ),
      body: Obx(() {
        return cartController.cartItems.isEmpty
            ? const Center(child: Text('Your cart is empty.'))
            : ListView.builder(
                itemCount: cartController.cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartController.cartItems[index];
                  return Card(
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(8),
                      leading: Image.asset(
                        item['coverImagePath'],
                        width: 50,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                      title: Text(item['title']),
                      subtitle: Text(item['author']),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            item['price'],
                            style: const TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () {
                              cartController.removeFromCart(index);
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
      }),
    );
  }
}
