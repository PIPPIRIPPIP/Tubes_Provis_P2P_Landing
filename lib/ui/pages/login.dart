import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
            children: [
            SizedBox(height: 150),
            Image.asset(
              "images/Logo-Investa.png", //pastikan file ada di [project]/assets/images
              height: 200,
              ),

            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     width: 200,
            //     height: 200,
            //     child: Image.asset('assets/Logo-Investa.png'), 
            //   ),
            // ),
            //Container
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color.fromARGB(255, 46, 44, 44), width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  contentPadding:
                  EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Color.fromARGB(255, 46, 44, 44), width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  labelText: ('Email'),
                  labelStyle:TextStyle(
                      color: Color.fromARGB(255, 46, 44, 44)
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color.fromARGB(255, 46, 44, 44), width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  contentPadding:
                      EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color.fromARGB(255, 46, 44, 44), width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  labelText: ('Kata Sandi'),
                  labelStyle:TextStyle(
                      color: Color.fromARGB(255, 46, 44, 44)
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(' Masuk '),
                  style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  )),
                )
                ) 
              ],
            )
            ],
          ),
      ),
    );
  }
}