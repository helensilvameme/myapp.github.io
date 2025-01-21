import 'package:flutter/material.dart';

void main() {
  runApp(const Aplicativo());
}

class Aplicativo extends StatelessWidget {
  const Aplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Programa Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const PrimeiraPagina(title: 'Programa Layout'),
    );
  }
}

class PrimeiraPagina extends StatelessWidget {
  const PrimeiraPagina({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50, // Fundo lilás claro
      body: Column(
        children: [
          // Layout Superior
          Container(
            height: 100, // Altura do layout superior
            color: const Color.fromARGB(255, 175, 191, 111),
            alignment: Alignment.center,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          // Layout Principal Verde
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(16.0), // Margem em torno do container verde
              decoration: BoxDecoration(
                color: Colors.green, // Cor do container central
                borderRadius: BorderRadius.circular(20), // Bordas arredondadas
              ),
              alignment: Alignment.center,
              child: const Text(
                'Meu Aplicativo',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // Layout Inferior
          Container(
            height: 50, // Altura do layout inferior
            alignment: Alignment.center,
            child: const Text(
              'Layout Inferior',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
