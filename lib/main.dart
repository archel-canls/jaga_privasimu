import 'package:flutter/material.dart';
import 'beranda_screen.dart';

void main() {
  runApp(const AplikasiPosterPrivasi());
}

class AplikasiPosterPrivasi extends StatelessWidget {
  const AplikasiPosterPrivasi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JAGA PRIVASIMU!',
      theme: ThemeData(
        primaryColor: const Color(0xFFD32F2F), 
        fontFamily: 'Roboto', 
        useMaterial3: true,
      ),
      home: const BerandaScreen(),
    );
  }
}
