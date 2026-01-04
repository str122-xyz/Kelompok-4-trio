import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FelanProfile extends StatefulWidget {
  const FelanProfile({super.key});

  @override
  State<FelanProfile> createState() => _FelanProfileState();
}

class _FelanProfileState extends State<FelanProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF63ADF2),
        leading: IconButton(
          onPressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
      ),
      backgroundColor: Color(0xFF63ADF2),
      body: Center(
        child: Card(
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            width: 340,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [Color(0xFF82A0BC), Color(0xFFA7CCED)],
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 42,
                      backgroundImage: AssetImage(
                        'assets/images/felan_profile.jpeg',
                      ),
                    ),

                    SizedBox(width: 16),

                    SizedBox(
                      height: 70,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Lottie.asset(
                          'assets/animations/UIUX Designer.json',
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                Text(
                  'Felan Ardenta Yoga',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5,
                  ),
                ),

                SizedBox(height: 4),

                Container(
                  margin: EdgeInsets.only(top: 6),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'NIM: 1123150086  •  Kelas: T1-23-SH',
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ),

                SizedBox(height: 12),

                Divider(color: Colors.white24),

                SizedBox(height: 8),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Keahlian:',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Design UI/UX',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ),

                    SizedBox(width: 8),

                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Chess',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ),

                    SizedBox(width: 8),

                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Programming',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ),

                    SizedBox(width: 8),
                  ],
                ),

                SizedBox(height: 8),

                Divider(color: Colors.white24),

                SizedBox(height: 8),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Tentang Saya:',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
