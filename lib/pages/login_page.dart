// import 'package:flutter/material.dart';
// import 'package:quran_app_test/pages/home_page.dart';
//
// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});
//
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   final TextEditingController _username = TextEditingController();
//   final TextEditingController _password = TextEditingController();
//   bool _isObscure = true;
//
//   void _handleLogin() {
//     final username = _username.text.trim(); // Trim whitespace from input
//     final password = _password.text.trim();
//
//     if (username.isEmpty || password.isEmpty) {
//       // Show alert dialog if email or password is empty
//       showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title: const Text('Login Error'),
//             content: const Text('Please enter your username and password.'),
//             actions: [
//               TextButton(
//                 onPressed: () => Navigator.pop(context),
//                 child: const Text('OK'),
//               ),
//             ],
//           );
//         },
//       );
//     } else {
//       // Assuming login is successful, navigate to HomePage
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => HomePage(username: username)),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Size screenSize = MediaQuery.of(context).size;
//     Orientation orientation = MediaQuery.of(context).orientation;
//
//     return Scaffold(
//       body: SafeArea(
//         child: ListView(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 32),
//               child: Center(
//                 child: const Text(
//                   "Qur'an App",
//                   style: TextStyle(
//                       color: Colors.amber,
//                       fontSize: 32,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Center(
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white60,
//                     borderRadius: BorderRadius.circular(20)
//                   ),
//                   child: Image.asset("assets/logo.png", fit: BoxFit.cover,),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: TextField(
//                 controller: _username,
//                 decoration: InputDecoration(
//                     hintText: 'Your Username',
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30))),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: TextField(
//                 obscureText: _isObscure,
//                 controller: _password,
//                 decoration: InputDecoration(
//                     hintText: 'Your Password',
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30)),
//                     suffixIcon: IconButton(
//                         icon: Icon(_isObscure
//                             ? Icons.visibility
//                             : Icons.visibility_off),
//                         onPressed: () {
//                           setState(() {
//                             _isObscure = !_isObscure;
//                           });
//                         })),
//               ),
//             ),
//             ElevatedButton(
//               style: ButtonStyle(
//                   backgroundColor: WidgetStatePropertyAll(Colors.amber)),
//               onPressed: _handleLogin,
//               child: Container(
//                 width: 450,
//                 child: const Text(
//                   "Get Started",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 24),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:quran_app_test/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _isObscure = true;

  void _handleLogin() {
    final username = _username.text.trim(); // Trim whitespace from input
    final password = _password.text.trim();

    if (username.isEmpty || password.isEmpty) {
      // Show alert dialog if email or password is empty
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Login Error'),
            content: const Text('Please enter your username and password.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      // Assuming login is successful, navigate to HomePage
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage(username: username)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 500),
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: Center(
                    child: const Text(
                      "Qur'an App",
                      style: TextStyle(
                          color: Colors.amber,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Image.asset("assets/logo.png", fit: BoxFit.cover),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _username,
                    decoration: InputDecoration(
                        hintText: 'Your Username',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    obscureText: _isObscure,
                    controller: _password,
                    decoration: InputDecoration(
                        hintText: 'Your Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        suffixIcon: IconButton(
                            icon: Icon(_isObscure
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            })),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.amber)),
                  onPressed: _handleLogin,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: const Text(
                      "Get Started",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}