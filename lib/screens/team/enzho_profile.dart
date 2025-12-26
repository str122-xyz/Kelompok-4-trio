import 'package:flutter/material.dart';

class EnzhoProfile extends StatefulWidget {
  const EnzhoProfile({super.key});

  @override
  State<EnzhoProfile> createState() => _EnzhoProfileState();
}

class _EnzhoProfileState extends State<EnzhoProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xff284B63),
        title: const Text(
          "My Profile",
          style: TextStyle(
            color: Color(0xffFFFFFF),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          }, 
          icon: Icon(Icons.arrow_back, color: Colors.white,)),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Card(
                    color: Color(0xff284B63),
                  ),
                )
              ],
          ),
        ),
      ),
    );
  }
}