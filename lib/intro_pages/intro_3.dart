import 'package:catalogue_iq/intro_pages/login_page.dart';
import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 40.0,
              right: 40,
              bottom: 40,
              top: 160,
            ),
            child: Image.asset('assets/images/intro4.png'),
          ),
          const SizedBox(width: 10),
         const  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               CircleAvatar(
                backgroundColor: Color.fromRGBO(147, 177, 166, 1.0),
                radius: 5,
              ),
               SizedBox(width: 5),
               CircleAvatar(
                backgroundColor: Color.fromRGBO(147, 177, 166, 1.0),
                radius: 5,
              ),
               SizedBox(width: 5),
               CircleAvatar(
                backgroundColor: Color.fromARGB(255, 45, 80, 67),
                radius: 5,
              ),
            ],
          ),
          const Padding(
            padding:  EdgeInsets.all(14.0),
            child: Text(
              "Where Scoring Meets Discovery - Catalogs Like Never Before",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: const Color.fromARGB(255, 45, 80, 67),
                      maximumSize: const Size(double.maxFinite, 50),
                    ),
                    onPressed: () {
                      print('Button tapped'); // Add this line
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                    },
                    child: const Text(
                      'Get Ready',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
