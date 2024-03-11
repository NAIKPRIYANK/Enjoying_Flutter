import 'package:flutter/material.dart';

class Df01 extends StatelessWidget {
  const Df01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:const Text("daily flash"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network("https://imgs.search.brave.com/Gb1oxjiRA2jQfYlsqrqatzlLxWdGhU667e_G4hVneko/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzY1LzRi/LzM5LzY1NGIzOTc2/MWYzYjY1NjJhYmJk/MjIyYjlhNTMwNWNi/LmpwZw"),
          const Padding(
            padding:  EdgeInsets.all(8.0),
            child:  Text("Chicken Pakora",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),),
          ),
          const Padding(
            padding:  EdgeInsets.all(8.0),
            child:  Text("Chicken Pakora (Chicken Pakoda) is a popular Indian snack where boneless chicken pieces are marinated with spices, ginger garlic paste, and lime juice and then coated with chickpea flour, rice flour, cornstarch, and egg.",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),),
          )
        ],
      ),
    );
  }
}