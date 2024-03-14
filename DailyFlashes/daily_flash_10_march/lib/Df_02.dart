import 'package:flutter/material.dart';

class Df02 extends StatefulWidget {
  const Df02({super.key});

  @override
  State<Df02> createState() => _Df02State();
}

class _Df02State extends State<Df02> {
  Widget foodWithName(String imgpath, String name) {
    return Column(
      children: [
        Image.network(
          fit: BoxFit.cover,
          imgpath,
          height: 150,
          width: 150,
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Text(name),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            children: [
              foodWithName(
                  "https://imgs.search.brave.com/OxTxX-0CBk3AKEqlXeMngHm-34n1jIQ3Wp9Y0odRo-c/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pMC53/cC5jb20vdGhlZm9v/ZGhvZy5jb20vd3At/Y29udGVudC91cGxv/YWRzLzIwMjAvMDIv/ZGFiZWxpLTEwMjR4/ODIzLmpwZWc",
                  "Dabeli"),
              const SizedBox(
                width: 10,
              ),
              foodWithName(
                  "https://imgs.search.brave.com/9hy0nMgKtBRX0Lf0N1WizfnTKhXv4EdnDqHYw0dH6PM/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pMC53/cC5jb20vdGhlZm9v/ZGhvZy5jb20vd3At/Y29udGVudC91cGxv/YWRzLzIwMjAvMDIv/TWlzYWwtUGF2LTEw/MjR4NTc4LmpwZw",
                  "Misal"),
              const SizedBox(
                width: 10,
              ),
              foodWithName(
                  "https://imgs.search.brave.com/9hy0nMgKtBRX0Lf0N1WizfnTKhXv4EdnDqHYw0dH6PM/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pMC53/cC5jb20vdGhlZm9v/ZGhvZy5jb20vd3At/Y29udGVudC91cGxv/YWRzLzIwMjAvMDIv/TWlzYWwtUGF2LTEw/MjR4NTc4LmpwZw",
                  "Misal"),
              const SizedBox(
                width: 10,
              ),
              foodWithName(
                  "https://imgs.search.brave.com/9hy0nMgKtBRX0Lf0N1WizfnTKhXv4EdnDqHYw0dH6PM/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pMC53/cC5jb20vdGhlZm9v/ZGhvZy5jb20vd3At/Y29udGVudC91cGxv/YWRzLzIwMjAvMDIv/TWlzYWwtUGF2LTEw/MjR4NTc4LmpwZw",
                  "Misal"),
              const SizedBox(
                width: 10,
              ),
              foodWithName(
                  "https://imgs.search.brave.com/9hy0nMgKtBRX0Lf0N1WizfnTKhXv4EdnDqHYw0dH6PM/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pMC53/cC5jb20vdGhlZm9v/ZGhvZy5jb20vd3At/Y29udGVudC91cGxv/YWRzLzIwMjAvMDIv/TWlzYWwtUGF2LTEw/MjR4NTc4LmpwZw",
                  "Misal"),
              const SizedBox(
                width: 10,
              ),
              foodWithName(
                  "https://imgs.search.brave.com/9hy0nMgKtBRX0Lf0N1WizfnTKhXv4EdnDqHYw0dH6PM/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pMC53/cC5jb20vdGhlZm9v/ZGhvZy5jb20vd3At/Y29udGVudC91cGxv/YWRzLzIwMjAvMDIv/TWlzYWwtUGF2LTEw/MjR4NTc4LmpwZw",
                  "Misal"),
              const SizedBox(
                width: 10,
              ),
              foodWithName(
                  "https://imgs.search.brave.com/9hy0nMgKtBRX0Lf0N1WizfnTKhXv4EdnDqHYw0dH6PM/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pMC53/cC5jb20vdGhlZm9v/ZGhvZy5jb20vd3At/Y29udGVudC91cGxv/YWRzLzIwMjAvMDIv/TWlzYWwtUGF2LTEw/MjR4NTc4LmpwZw",
                  "Misal"),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
