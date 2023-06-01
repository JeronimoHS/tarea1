import "package:flutter/material.dart";
import 'package:tarea1/pages/login_page.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Fondo(),
          Texto(),
          //Botones(),
        ],
      ),
    );
  }
}

class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black, Colors.blue],
              begin: Alignment.centerRight,
              end: Alignment.bottomLeft)),
    );
  }
}

class Texto extends StatelessWidget {
  const Texto({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('logo.png'),
            const Center(
              child: Text(
                'Welcome to ASD',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),

              ),
            ),
            const SizedBox(height: 30),
            const Center(
              child: Text(
                'This is a welcome for testinf my flutter proyect, please clic and get started!  ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              width: double.infinity,
              height: 25,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LoginPage()));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 60, 0, 71))),
                  child: const Text(
                    ' Get started 〉',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                    ),
                  )),
            ),
          ],
        ));
  }
}