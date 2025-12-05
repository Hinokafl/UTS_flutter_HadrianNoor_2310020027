import 'package:flutter/material.dart';

class FoodDetailPage extends StatelessWidget {
  const FoodDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final food = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(title: Text(food["name"])),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                food["image"],
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              food["name"],
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            Row(
              children: [
                const Icon(Icons.person, size: 20, color: Colors.grey),
                const SizedBox(width: 6),
                Text(
                  "By ${food["chef"]}",
                  style: const TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ],
            ),

            const SizedBox(height: 20),

            const Text(
              "Description",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),

            const SizedBox(height: 8),

            /// 🔥 Ini sudah DIGANTI — langsung pakai deskripsi dari data!
            Text(
              food["desc"],
              style: const TextStyle(fontSize: 16, height: 1.5),
            ),

            const SizedBox(height: 30),

            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
              label: const Text("Order Now"),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
