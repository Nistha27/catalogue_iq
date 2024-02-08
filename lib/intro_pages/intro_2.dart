import 'package:catalogue_iq/intro_pages/intro_3.dart';
import 'package:flutter/material.dart';
import 'package:catalogue_iq/intro_pages/login_page.dart';
class IntroPage2 extends StatelessWidget{
  const IntroPage2({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body :  Column(
        children: [
          // image // message // two buttons // skip // next
          Padding(
            padding: const EdgeInsets.only(
              left:40.0,
              right:40,
              bottom:40,
              top:160),
            child:  Image.asset('assets/images/intro3.png'),
            ),
            const SizedBox(width:10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(147, 177, 166, 1.0),
                  radius:5,
                ),
                SizedBox(width: 5),
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 45, 80, 67),
                  radius:5,
                ),
                SizedBox(width: 5),
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(147, 177, 166, 1.0),
                  radius:5,
                ),
              ],
            ),
            const Padding(
            padding:  EdgeInsets.all(14.0),
            child: Text(
              "Use Templates to uncover a universe of possibilities",
              textAlign: TextAlign.center,
              style:  TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              )
            ),
          ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Expanded(
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: (){
                      Navigator.pushReplacement(
                        context,
                         MaterialPageRoute(builder: (context) =>  const LoginPage()),
                         );
                    },
                  child: const Text('Skip',
                  style: TextStyle(
                    fontWeight:FontWeight.w600,
                    color: Colors.black
                      ),
                    ),
                  ),
                ),
                const SizedBox(width:30),
                Expanded(
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: const Color.fromARGB(255, 45, 80, 67),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const IntroPage3()),
                      );
                    },
                    child: const Text("Next",
                    style: TextStyle(
                      fontWeight:FontWeight.w600,
                      color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}