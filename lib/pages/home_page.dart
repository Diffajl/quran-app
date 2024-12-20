// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
//
// // List of Surah Names
// const List<String> surahNames = [
//   "Al-Fatihah",
//   "Al-Baqarah",
//   "Al Imran",
//   "An-Nisa",
//   "Al-Ma'idah",
//   "Al-An'am",
//   "Al-A'raf",
//   "Al-Anfal",
//   "At-Taubah",
//   "Yunus",
//   "Hud",
//   "Yusuf",
//   "Ar-Ra'd",
//   "Ibrahim",
//   "Al-Hijr",
//   "Al-Nahl",
//   "Al-Isra",
//   "Al-Kahf",
//   "Maryam",
//   "Taha",
//   "Al-Anbiya",
//   "Al-Hajj",
//   "Al-Mu'minun",
//   "An-Nur",
//   "Al-Furqan",
//   "Asy-Syu'ara",
//   "An-Naml",
//   "Al-Qasas",
//   "Al-Ankabut",
//   "Ar-Rum",
//   "Luqman",
//   "As-sajdah",
//   "Al-Ahzab",
//   "Saba'",
//   "Fatir",
//   "Yasin",
//   "As-Safat",
//   "Sad",
//   "Az-Zumar",
//   "Ghafir",
//   "Fussilat",
//   "Asy-Syura",
//   "Az-Zukhruf",
//   "Ad-Dukhan",
//   "Al-Jasiyah",
//   "Al-Ahqaf",
//   "Muhammad",
//   "Al-Fath",
//   "Al-Hujurat",
//   "Qaf",
//   "Az-Zariyat",
//   "At-Tur",
//   "An-Najm",
//   "Al-Qomar",
//   "Ar-Rahman",
//   "Al-Waqi'ah",
//   "Al-Hadid",
//   "Al-Muhadalah",
//   "Al-Hasyr",
//   "Al-Mumtahanah",
//   "As-Saff",
//   "Al-Jumu'ah",
//   "Al-Munafiqun",
//   "Al-Tagabun",
//   "At-Talaq",
//   "At-Tahrim",
//   "Al-Mulk",
//   "Al-Qalam",
//   "Al-Haqqah",
//   "Al-Ma'arij",
//   "Nuh",
//   "Al-Jin",
//   "Al-Muzammil",
//   "Al-Muddassir",
//   "Al-Qiyamah",
//   "Al-Insan",
//   "Al-Mursalat",
//   "An-Naba",
//   "An-Naziat",
//   "Abasa",
//   "At-Takwir",
//   "Al-Infitar",
//   "Al-Mutafifin",
//   "Al-Insyiqaq",
//   "Al-Buruj",
//   "At-Tariq",
//   "Al-A'la",
//   "Al-Ghasiyah",
//   "Al-Fajr",
//   "Al-Balad",
//   "As-Syams",
//   "Al-Lail",
//   "Ad-Duha",
//   "Al-Insyirah",
//   "At-Tin",
//   "Al-Alaq",
//   "Al-Qadr",
//   "Al-Bayyinah",
//   "Az-Zalzalah",
//   "Al-Adiyat",
//   "Al-Qari'ah",
//   "At-Takasur",
//   "Al-Asr",
//   "Al-Humazah",
//   "Al-Fil",
//   "Al-Ma'un",
//   "Al-Kausar",
//   "Al-Kafirun",
//   "An-Nasr",
//   "Al-Lahab",
//   "Al-Ikhlas",
//   "Al-Falaq",
//   "An-Nas",
// ];
//
// class SurahItem extends StatelessWidget {
//   final int surahNumber;
//
//   const SurahItem({
//     super.key,
//     required this.surahNumber,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final surahName = surahNames[surahNumber - 1]; // Access by index (0-based)
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         padding: const EdgeInsets.all(10),
//         width: 350,
//         height: 50,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color: const Color.fromARGB(255, 121, 121, 121),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               surahNumber.toString(),
//               style: TextStyle(
//                   color: Colors.amber,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 24),
//             ),
//             Text(
//               surahName,
//               style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 22),
//             ),
//             const Icon(
//               Icons.play_arrow,
//               color: Colors.amber,
//               size: 24,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key, required this.username});
//   final String username;
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Hello ${widget.username}",
//           style: TextStyle(
//             color: Colors.amber,
//             fontWeight: FontWeight.bold,
//             fontSize: 24,
//           ),
//         ),
//       ),
//       body: SafeArea(
//         child: ListView(
//           children: [
//             Container(
//               width: 200,
//               height: 200,
//               decoration: BoxDecoration(
//                 color: const Color.fromARGB(255, 70, 70, 70),
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     "DZUHUR",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                     ),
//                   ),
//                   const Text(
//                     "12:16 PM",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 26,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Text(
//                     "${DateFormat.yMMMd().format(DateTime.now())}",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             // Generate Surah Items using a loop (no need to change)
//             ListView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               itemCount: surahNames.length, // Menggunakan panjang dinamis
//               itemBuilder: (context, index) {
//                 final surahNumber = index + 1; // Start from 1
//                 return SurahItem(surahNumber: surahNumber);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:quran_app_test/widget/surah_items.dart';
import '../constant/surahs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.username});
  final String username;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello ${widget.username}",
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 600),
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 70, 70, 70),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "DZUHUR",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      const Text(
                        "12:16 PM",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${DateFormat.yMMMd().format(DateTime.now())}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: surahNames.length, // Menggunakan panjang dinamis
                  itemBuilder: (context, index) {
                    final surahNumber = index + 1; // Start from 1
                    return SurahItem(surahNumber: surahNumber);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}