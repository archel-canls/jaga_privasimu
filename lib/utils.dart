import 'package:flutter/material.dart';

const Color neonYellow = Color(0xFFFFEB3B);
const Color deepRed = Color(0xFFD32F2F);
const Color accentBlue = Color(0xFF1976D2);
const Color shadowOrange = Color(0xFFFFA500);

Widget buildGambarTebal(String text) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
    decoration: BoxDecoration(
      color: neonYellow,
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: deepRed, width: 1),
      boxShadow: const [BoxShadow(color: accentBlue, offset: Offset(0, 1), blurRadius: 0)],
    ),
    child: Text(
      text.toUpperCase(),
      style: const TextStyle(
        color: deepRed,
        fontWeight: FontWeight.w900,
        fontSize: 12,
        letterSpacing: 0.3,
        height: 1.2,
      ),
      textAlign: TextAlign.center,
    ),
  );
}

class InfoBoxWidget extends StatelessWidget {
  final String emoji;
  final String title;
  final String description;
  final Color iconColor;
  final VoidCallback onTap;

  const InfoBoxWidget({
    super.key,
    required this.emoji,
    required this.title,
    required this.description,
    required this.iconColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final List<InlineSpan> styledDescription = [];
    final parts = description.split(RegExp(r'(\*\*.*?\*\*)'));

    for (var part in parts) {
      if (part.startsWith('**') && part.endsWith('**')) {
        styledDescription.add(
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: buildGambarTebal(part.replaceAll('**', '')),
            ),
          ),
        );
      } else {
        styledDescription.add(
          TextSpan(
            text: part,
            style: const TextStyle(
              fontSize: 13,
              color: Color(0xFF333333),
              height: 1.3,
              fontWeight: FontWeight.w500,
            ),
          ),
        );
      }
    }

    return MouseRegion(
      cursor: SystemMouseCursors.click, 
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: accentBlue, width: 5, style: BorderStyle.solid),
            boxShadow: [
              BoxShadow(
                color: shadowOrange.withOpacity(0.8),
                offset: const Offset(6, 6),
                blurRadius: 0,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: iconColor,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 4),
                  boxShadow: const [BoxShadow(color: Colors.black38, blurRadius: 10)],
                ),
                alignment: Alignment.center,
                child: Text(emoji, style: const TextStyle(fontSize: 35)),
              ),
              const SizedBox(height: 10),
              
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: title.split(' ').first,
                      style: const TextStyle(
                        fontSize: 18,
                        color: deepRed,
                        fontWeight: FontWeight.w900,
                        shadows: [Shadow(color: neonYellow, offset: Offset(1, 1))],
                      ),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: buildGambarTebal(title.split(' ').sublist(1).join(' ')),
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),

              Expanded(
                child: Text.rich(
                  TextSpan(children: styledDescription),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: deepRed, 
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: neonYellow, width: 2), 
                  boxShadow: const [BoxShadow(color: Colors.black45, offset: Offset(2, 2))],
                ),
                child: const Text(
                  'KLIK UNTUK DETAILNYA',
                  style: TextStyle(
                    color: neonYellow,
                    fontWeight: FontWeight.w900,
                    fontSize: 14,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border(
          top: BorderSide(color: deepRed, width: 4, style: BorderStyle.solid),
        ),
      ),
      child: const Column(
        children: [
          Text(
            '🌐 PRIVASI ANDA = TANGGUNG JAWAB ANDA | #AmanDiDuniaDigital',
            style: TextStyle(
              color: neonYellow,
              fontSize: 15,
              fontFamily: 'Courier New',
              fontWeight: FontWeight.w900,
              letterSpacing: 1,
              shadows: [Shadow(color: deepRed, offset: Offset(1, 1), blurRadius: 0)],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          Text(
            'By: Arif Alfian Choirul Anwar (23670119)',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.normal,
              letterSpacing: 0,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
