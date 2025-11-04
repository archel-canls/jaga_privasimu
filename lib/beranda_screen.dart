import 'package:flutter/material.dart';
import 'utils.dart'; 
import 'password_detail_screen.dart';
import 'twofa_detail_screen.dart';
import 'phishing_detail_screen.dart';
import 'sharing_detail_screen.dart';


class BerandaScreen extends StatelessWidget {
  const BerandaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WARNING! JAGA PRIVASIMU!',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            letterSpacing: 1.5,
            shadows: [Shadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 1)],
          ),
        ),
        centerTitle: true,
        backgroundColor: deepRed, 
        toolbarHeight: 70,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(25.0),
          child: Container(
            color: Colors.black,
            padding: const EdgeInsets.only(bottom: 5.0),
            child: const Center(
              child: Text(
                'Tingkatkan Keamanan Data Pribadimu di Dunia Digital',
                style: TextStyle(
                  color: neonYellow, 
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
      
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFE6F7FF), Colors.white, Color(0xFFF7E6FF)],
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 20),
            
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: 0.85, 
              children: <Widget>[
                InfoBoxWidget( 
                  emoji: '🔑',
                  title: 'PASSWORD UNIK & KUAT',
                  description: 'Kombinasikan **huruf, angka, dan simbol**. Jangan ulangi password. Gunakan Pengelola Kata Sandi (Password Manager). Ganti secara rutin!',
                  iconColor: const Color(0xFFBBDEFB),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const PasswordDetailScreen()));
                  },
                ),
                InfoBoxWidget( 
                  emoji: '🛡️',
                  title: 'AKTIFKAN 2FA / OTP',
                  description: 'Selalu aktifkan **Otentikasi Dua Faktor** (2FA) di semua akun penting Anda (Email, Medsos, Perbankan). Ini pertahanan ganda terbaik!',
                  iconColor: const Color(0xFFC8E6C9),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const TwoFADetailScreen()));
                  },
                ),
                InfoBoxWidget( 
                  emoji: '🎣',
                  title: 'WASPADA PHISHING',
                  description: 'Jangan klik tautan atau berikan data pribadi dari pesan/email yang mencurigakan. **Periksa alamat pengirim** dan URL sebelum bertindak.',
                  iconColor: const Color(0xFFFFCCBC),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const PhishingDetailScreen()));
                  },
                ),
                InfoBoxWidget( 
                  emoji: '👤',
                  title: 'BATASI SHARING DATA',
                  description: 'Atur akun media sosial ke mode **PRIVAT**. Hindari memposting informasi sensitif seperti tiket, dokumen, atau lokasi rumah Anda secara detail.',
                  iconColor: const Color(0xFFF8BBD0),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SharingDetailScreen()));
                  },
                ),
              ],
            ),

            const SizedBox(height: 30),
            
      
            const FooterWidget(), 
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
