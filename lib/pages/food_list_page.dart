import 'package:flutter/material.dart';

class FoodListPage extends StatelessWidget {
  final foods = [
    {
      "name": "Nasi Goreng Spesial",
      "chef": "Chef Budi",
      "image":
          "https://tse4.mm.bing.net/th/id/OIP.znFpL6C4h2Aqcs-WJZeRHAHaGP?cb=ucfimg2&ucfimg=1&rs=1&pid=ImgDetMain&o=7&rm=3",
      "desc":
          "Hidangan nasi goreng dengan topping ayam dan telur ini tidak hanya menawarkan rasa gurih yang khas, tetapi juga memberikan tekstur yang berlapis—dari potongan ayam yang empuk hingga telur yang lembut—membuat setiap suapan terasa lengkap dan memuaskan..",
    },
    {
      "name": "Bakso Jumbo",
      "chef": "Mbak Siska",
      "image":
          "https://cdn.tasteatlas.com/images/dishrestaurants/35a1edd0bee948e1bcf590b13f9f76c3.jpg",
      "desc":
          "Semangkuk bakso panas dengan kuah bening yang gurih selalu berhasil menghadirkan kenyamanan, terutama ketika bola-bola dagingnya yang kenyal berpadu dengan taburan bawang goreng dan sambal yang membuat rasanya semakin lengkap dan memanjakan lidah.",
    },
    {
      "name": "Ayam Geprek Pedas",
      "chef": "Chef Rani",
      "image": "https://bing.com/th?id=OSK.2af46a87a070d90b99f5e33fa4b6911e",
      "desc":
          "Ayam geprek dengan sambal yang ditumbuk langsung di atas ayam goreng yang renyah menghasilkan sensasi pedas, gurih, dan renyah sekaligus, membuat hidangan sederhana ini selalu sukses menggugah selera sejak gigitan pertama.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore Foods"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.filter_list))],
      ),

      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: foods.length,
        itemBuilder: (context, index) {
          final food = foods[index];
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/detail', arguments: food);
            },
            child: Card(
              child: ListTile(
                leading: Image.network(
                  food["image"]!,
                  width: 60,
                  fit: BoxFit.cover,
                ),
                title: Text(food["name"]!),
                subtitle: Text(food["chef"]!),
              ),
            ),
          );
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Fav"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
