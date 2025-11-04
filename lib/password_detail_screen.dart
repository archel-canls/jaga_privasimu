import 'package:flutter/material.dart';
import 'utils.dart'; 
class PasswordDetailScreen extends StatelessWidget {
  const PasswordDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Password Unik & Kuat',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: deepRed,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('🔑 Taktik Mengamankan Kata Sandi', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900, color: accentBlue)),
            const Divider(),
            
            _buildDetailSection(
              title: '1. Kombinasi Maksimal',
              content: 'Pastikan kata sandi Anda mengandung kombinasi **huruf besar, huruf kecil, angka, dan simbol**. Panjang minimal 12 karakter sangat disarankan. Hindari menggunakan informasi pribadi yang mudah ditebak seperti tanggal lahir atau nama hewan peliharaan.',
              icon: Icons.vpn_key,
            ),
            
            _buildDetailSection(
              title: '2. Pengelola Kata Sandi (Password Manager)',
              content: 'Gunakan aplikasi pengelola kata sandi tepercaya (seperti LastPass atau 1Password) untuk membuat, menyimpan, dan mengisi kata sandi yang kompleks dan unik untuk setiap situs. Ini menghilangkan keharusan Anda untuk mengingat semuanya.',
              icon: Icons.lock_open,
            ),
            
            _buildDetailSection(
              title: '3. Hindari Pengulangan',
              content: 'Jangan pernah menggunakan kata sandi yang sama untuk dua akun atau lebih. Jika satu akun terbobol, semua akun Anda yang lain akan aman.',
              icon: Icons.do_not_disturb_alt,
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
