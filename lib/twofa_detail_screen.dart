import 'package:flutter/material.dart';
import 'utils.dart'; 

class TwoFADetailScreen extends StatelessWidget {
  const TwoFADetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Aktifkan 2FA / OTP',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: deepRed,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('🛡️ Pertahanan Ganda Terbaik', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900, color: accentBlue)),
            const Divider(),
            
            _buildDetailSection(
              title: 'Apa itu 2FA?',
              content: 'Otentikasi Dua Faktor (2FA) adalah proses keamanan yang mengharuskan pengguna menyediakan dua jenis verifikasi yang berbeda untuk mengakses akun. Ini bertujuan untuk memastikan bahwa pengguna adalah benar-benar pemilik akun.',
              icon: Icons.security,
            ),
            
            _buildDetailSection(
              title: 'Mengapa Harus Diaktifkan?',
              content: 'Meskipun *hacker* berhasil mencuri kata sandi Anda, mereka tetap tidak bisa masuk karena mereka tidak memiliki kode kedua (OTP/Token) yang biasanya dikirim ke ponsel Anda atau dihasilkan oleh aplikasi autentikator.',
              icon: Icons.check_circle_outline,
            ),
            
            _buildDetailSection(
              title: 'Metode 2FA Terbaik',
              content: 'Pilih metode aplikasi autentikator (seperti Google Authenticator atau Authy) dibandingkan SMS. Kode SMS lebih rentan terhadap serangan SIM *Swapping*.',
              icon: Icons.app_blocking,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailSection({required String title, required String content, required IconData icon}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: deepRed, size: 30),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: deepRed),
                ),
                const SizedBox(height: 5),
                Text(
                  content,
                  style: TextStyle(fontSize: 16, height: 1.4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
