import 'package:flutter/material.dart';

class SadamProfile extends StatefulWidget {
  const SadamProfile({super.key});

  @override
  State<SadamProfile> createState() => _SadamProfileState();
}

class _SadamProfileState extends State<SadamProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff284B63),
    
    appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "My Profile",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Inter', 
            fontWeight: FontWeight.bold,
          ),
        ),

         centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        ),
        body: Center(
        child: SingleChildScrollView(
             padding: const EdgeInsets.all(20),
            child: Column(
            children: [
              const Icon(
                Icons.account_circle,
                size: 50,
                color: Colors.white54,
              ),
              const SizedBox(height: 10),
            
               Card(
                color: Colors.white, 
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [  Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50), // Foto Bulat
                            child: Image.asset(
                              'assets/images/foto_sadam.jpg',
                               width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Sadam Irham Marami',
                                  style: TextStyle(
                                    color: Color(0xff284B63), 
                                    fontFamily: 'Inter', 
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                        ]
                ),
                ),
                        ]
                ),
             Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                            color: const Color(0xff284B63).withOpacity(0.1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                            child: const Text(
                            "Mobile Developer",
                            style: TextStyle(
                            color: Color(0xff284B63),
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600
                            
                  ),
                  ),
                  ),
                    const SizedBox(height: 25),
                      const Divider(),
                      const SizedBox(height: 15),
                  ]
              ),
            ),
            ),
            ] 
          ),
    ),
    ),
    );
    
  }
}