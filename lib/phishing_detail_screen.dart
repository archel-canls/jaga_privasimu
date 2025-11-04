import 'package:flutter/material.dart';
import 'utils.dart'; 

class PhishingDetailScreen extends StatelessWidget {
  const PhishingDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Waspada Phishing',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: deepRed,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('🎣 Mengenali Jebakan Online', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900, color: accentBlue)),
            const Divider(),
            
            _buildDetailSection(
              title: 'Apa itu Phishing?',
              content: 'Phishing adalah upaya penipuan untuk mendapatkan informasi sensitif seperti *username*, kata sandi, dan detail kartu kredit, biasanya melalui email, pesan teks, atau telepon yang menyamar sebagai entitas tepercaya.',
              icon: Icons.person_search,
            ),
            
            _buildDetailSection(
              title: 'Periksa Alamat dan URL',
              content: 'Selalu periksa alamat email pengirim dan URL tautan. Phisher sering menggunakan domain yang sangat mirip (misalnya *bankk.com* alih-alih *bank.com*). Arahkan kursor Anda ke tautan tanpa mengkliknya terlebih dahulu.',
              icon: Icons.link_off,
            ),
            
            _buildDetailSection(
              title: 'Waspadai Urgensi Palsu',
              content: 'Pesan *phishing* sering menciptakan rasa panik atau urgensi (misalnya, "Akun Anda akan diblokir dalam 2 jam!"). Ini memaksa Anda bertindak tanpa berpikir. Abaikan pesan yang menuntut tindakan segera.',
              icon: Icons.warning_amber,
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
