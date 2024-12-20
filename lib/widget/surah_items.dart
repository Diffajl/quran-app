import 'package:flutter/material.dart';
import '../constant/surahs.dart';

class SurahItem extends StatelessWidget {
  final int surahNumber;

  const SurahItem({
    super.key,
    required this.surahNumber,
  });

  @override
  Widget build(BuildContext context) {

    final surahName = surahNames[surahNumber - 1]; // Access by index (0-based)
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 121, 121, 121),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              surahNumber.toString(),
              style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            Text(
              surahName,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            const Icon(
              Icons.play_arrow,
              color: Colors.amber,
              size: 24,
            )
          ],
        ),
      ),
    );
  }
}