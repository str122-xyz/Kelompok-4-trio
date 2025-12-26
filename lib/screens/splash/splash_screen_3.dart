import 'package:flutter/material.dart';

class SplashEnzho extends StatefulWidget {
  const SplashEnzho({super.key});

  @override
  State<SplashEnzho> createState() => _SplashEnzhoState();
}

class _SplashEnzhoState extends State<SplashEnzho> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        backgroundColor: Color.fromRGBO(0, 35, 53, 1),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(0, 35, 53, 1),
              Color(0xff3C6E71)
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              children: [
                Center(
                  child: Material(
                  color:Colors.transparent,
                    child: InkWell(
                      customBorder: const CircleBorder(),
                    
                    child: Container(
                      width: 250,
                      height: 250,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                          )
                        ]
                      ),
                    ),
                    ),
                  )
                )
              ],
          ),
        ),
      ),
    );
  }
}