import 'package:flutter/material.dart';
import 'utils.dart';

class SharingDetailScreen extends StatelessWidget {
  const SharingDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Batasi Sharing Data',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: deepRed,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('👤 Batasan Data Pribadi di Media Sosial', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900, color: accentBlue)),
            const Divider(),
            
            _buildDetailSection(
              title: 'Atur Akun ke Mode Privat',
              content: 'Sebagian besar platform media sosial memiliki opsi untuk mengatur akun Anda menjadi privat. Ini membatasi siapa yang dapat melihat postingan dan informasi Anda hanya kepada orang yang Anda setujui sebagai pengikut.',
              icon: Icons.visibility_off,
            ),
            
            _buildDetailSection(
              title: 'Hindari Informasi Geografis Sensitif',
              content: 'Jangan memposting foto atau dokumen yang menunjukkan detail lokasi rumah Anda (seperti plat nomor, alamat jelas, atau rencana perjalanan yang kosong). Hal ini dapat menjadi target bagi pelaku kejahatan.',
              icon: Icons.location_off,
            ),
            
            _buildDetailSection(
              title: 'Berhati-hati dengan Kuis dan Survei',
              content: 'Banyak kuis online dan survei yang mengumpulkan informasi yang dapat digunakan untuk menebak pertanyaan keamanan Anda (misalnya: nama guru pertama, nama ibu kandung). Jawab dengan bijak atau hindari sama sekali.',
              icon: Icons.question_mark,
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
