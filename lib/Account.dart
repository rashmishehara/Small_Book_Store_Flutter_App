import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F1E6),
      appBar: AppBar(
        title: const Text('Account'),
        backgroundColor: const Color.fromARGB(255, 254, 201, 132),
        elevation: 0,
      ),
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/profile.webp'), 
              ),
              const SizedBox(height: 20),

              const Text(
                'Rashmi Shehara',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              const InfoBox(label: 'Email', value: 'rashmishehara@gmail.com'),
              const InfoBox(label: 'Phone', value: '+94 726 2692'),
              const InfoBox(label: 'Shipping Address', value: '178, Kapuduwa, Thihagoda'),
              const InfoBox(label: 'Town', value: 'Matara'),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white, 
                  minimumSize: const Size(150, 40), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Log Out'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoBox extends StatelessWidget {
  final String label;
  final String value;

  const InfoBox({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 5),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey.shade300, 
              borderRadius: BorderRadius.circular(8), 
            ),
            child: Text(
              value,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
