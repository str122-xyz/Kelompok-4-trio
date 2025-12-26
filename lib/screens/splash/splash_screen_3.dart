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
        child: SafeArea(
            child: Column(
                children: [
                  Spacer(),
                  Center(
                    child: Material(
                    color:Colors.transparent,
                      child: InkWell(
                        customBorder: const CircleBorder(),
                      
                      child: Container(
                        width: 250,
                        height: 250,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 20,
                            )
                          ],
                          image: DecorationImage(
                            image: AssetImage("assets/images/logo2.png"),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                      ),
                    )
                  ),
          
                  SizedBox(height: 30,),
          
                  Text(
                    'Ingpo Kampus',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
          
                  SizedBox(height: 10,),
          
                  Text(
                    'Eksplorasi dunia kampus jadi lebih mudah. Gak bakal ketinggalan info penting lagi!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
          
                  Spacer(),
          
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildDot(isActive: false), 
                      const SizedBox(width: 10),
                      _buildDot(isActive: true), 
                      const SizedBox(width: 10),
                      _buildDot(isActive: false), 
                    ],
                  ),
          
                  SizedBox(height: 50),
                ],
            ),
        ),
      ),
    );
  }

  Widget _buildDot({required bool isActive}) {
    return Container(
      width: isActive ? 12 : 10,
      height: isActive ? 12 : 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.white : const Color(0xFFD9D9D9),
      ),
    );
  }
}