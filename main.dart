
//version2

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String prenom = '';
  String nom = '';
  String nomComplet = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => prenom = value,
            ),
            TextField(
              onChanged: (value) => nom = value,
            ),
            ElevatedButton(
              onPressed: () => setState(() => nomComplet = '$prenom $nom'),
              child: const Text('Afficher'),
            ),
            Text(nomComplet),
          ],
        ),
      ),
    );
  }
}