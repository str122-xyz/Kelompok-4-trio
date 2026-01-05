import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kelompok4_app_mobile/screens/auth/login_page.dart';
import 'package:kelompok4_app_mobile/screens/dashboard/sub_pages.dart';
import 'package:kelompok4_app_mobile/screens/team/team_profiles.dart';
import 'package:kelompok4_app_mobile/services/auth_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // 0: Home, 1: Team, 2: Settings
  final AuthService _authService = AuthService();
  User? currentUser = FirebaseAuth.instance.currentUser;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // Buat akun masing"
  final Map<String, String> _memberNames = {
    'atmin@email.com': 'Admin Ganteng',
    'satria@hrl.com': 'Satria Herlambang',
  };

  // Fungsi buat ngambil nama berdasarkan email yang login
  String _getDisplayName() {
    String email = currentUser?.email ?? '';
    return _memberNames[email] ?? 'Guest'; // Default jadi guest
  }

  // List Halaman untuk Bottom Navigation
  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      _buildHomeContent(), // Halaman 0: Home Portal
      ProfileTeam(),
      _buildSettingsContent(), // Halaman 2: Settings
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Fungsi Logout
  void _handleLogout() async {
    await _authService.signOut();
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    }
  }

  // Fungsi buat Navigasi Pindah Halaman
  void _navigateTo(Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  // Fungsi Popup
  void _showPopup(String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          title: Row(
            children: [
              const Icon(Icons.info_outline, color: Color(0xFF304D6D)),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          content: Text(message, style: const TextStyle(fontFamily: 'Poppins')),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text(
                "Oke",
                style: TextStyle(
                  color: Color(0xFF304D6D),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          "Ingpoglb",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF304D6D), Color(0xFF63ADF2)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined, color: Colors.white),
          ),
        ],
      ),

      // Drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF304D6D), Color(0xFF63ADF2)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              accountName: Text(
                _getDisplayName(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                ),
              ),
              accountEmail: Text(
                currentUser?.email ?? 'No Email',
                style: const TextStyle(fontFamily: 'Poppins'),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  _getDisplayName()[0],
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF304D6D),
                  ),
                ),
              ),
            ),
            _buildDrawerItem(Icons.home_outlined, 'Home', 0),
            _buildDrawerItem(Icons.people_outline, 'Team', 1),
            _buildDrawerItem(Icons.settings_outlined, 'Settings', 2),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text('Logout', style: TextStyle(color: Colors.red)),
              onTap: _handleLogout,
            ),
          ],
        ),
      ),

      // Isi Halaman
      body: _pages[_selectedIndex],

      //Bottom navigasi bar
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: const Color(0xFF304D6D),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.groups), label: 'Team'),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }

  // function buat item drawer biar rapi
  Widget _buildDrawerItem(IconData icon, String title, int index) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      selected: _selectedIndex == index,
      selectedColor: const Color(0xFF304D6D),
      onTap: () {
        _onItemTapped(index);
        Navigator.pop(context);
      },
    );
  }

  // Widget Halaman Home
  Widget _buildHomeContent() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Halo, ${_getDisplayName().split(' ')[0]}! 👋",
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontFamily: 'Poppins',
            ),
          ),
          const Text(
            "Portal Akademik",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF353535),
              fontFamily: 'Poppins',
            ),
          ),

          const SizedBox(height: 20),

          // Banner Carousel
          SizedBox(
            height: 160,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildBannerCard(
                  "Jadwal UAS",
                  "Cek dan Cetak Kartu Ujian",
                  const Color(0xFF304D6D),
                  onTap: () => _navigateTo(const JadwalUasPage()),
                ),
                _buildBannerCard(
                  "Pelaksanaan Ujian Susulan",
                  "Ingpo Lengkap Disini",
                  const Color(0xFF63ADF2),
                  onTap: () {}, // Todo ganti navigate to page
                ),
                _buildBannerCard(
                  "Pengisian KRS Semester Genap",
                  "19 Jan - 24 Jan 2026",
                  Colors.orange,
                  onTap: () {},
                ),
                _buildBannerCard(
                  "Masuk Perkuliahan Semester Genap",
                  "09 Februari 2026",
                  const Color(0xFFE53935),
                  onTap: () {},
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          // Menu grid
          const Text(
            "Menu",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(height: 15),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 4,
            childAspectRatio: 0.8,
            children: [
              // Menu 1: Jadwal
              _buildMenuIcon(
                Icons.calendar_today,
                "Jadwal",
                const Color(0xFF304D6D),
                onTap: () {
                  _showPopup("Ingpo", "Mas eh"); // Todo ganti navigate to page
                },
              ),
              // Menu 2: Nilai
              _buildMenuIcon(
                Icons.assignment,
                "Nilai",
                const Color(0xFF63ADF2),
                onTap: () {
                  _showPopup(
                    "Informasi",
                    "Fitur Nilai sedang dalam perbaikan server.",
                  );
                },
              ),
              // Menu 3: Presensi
              _buildMenuIcon(
                Icons.book,
                "Presensi",
                Colors.blue,
                onTap: () {
                  _showPopup(
                    "Informasi",
                    "Fitur Presensi belum tersedia saat ini.",
                  );
                },
              ),

              // Menu 4: Keuangan
              _buildMenuIcon(
                Icons.monetization_on,
                "Keuangan",
                Colors.green,
                onTap: () {
                  _showPopup("Ingpo", "Mas eh"); // Todo ganti navigate to page
                },
              ),
            ],
          ),

          const SizedBox(height: 25),

          // List Berita
          const Text(
            "Pengumuman Terbaru",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(height: 10),
          _buildNewsItem(
            "Libur Semester Ganjil",
            "Mulai tanggal 12 Januari 2026.",
          ),
          _buildNewsItem("Pengumuman Nilai Akhir", "19 Januari 2026"),
          _buildNewsItem("Maintenance Sistem", "Server down pada hari Minggu."),
        ],
      ),
    );
  }

  // Widget Halaman Pengaturan

  Widget _buildSettingsContent() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Pengaturan",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(height: 20),

          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text(
              _getDisplayName(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Inter',
              ),
            ),
            subtitle: Text(currentUser?.email ?? ''),
          ),

          const Divider(),
          const SizedBox(height: 20),

          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton.icon(
              onPressed: _handleLogout,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[50],
                foregroundColor: Colors.red,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              icon: const Icon(Icons.logout_outlined),
              label: const Text(
                "Keluar Aplikasi",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inter',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget helper

  Widget _buildBannerCard(
    String title,
    String subtitle,
    Color color, {
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 280,
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
              ),
            ),
            const SizedBox(height: 5),
            Text(
              subtitle,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
                fontFamily: 'Inter',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuIcon(
    IconData icon,
    String label,
    Color color, {
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(icon, color: color, size: 28),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 12, fontFamily: 'Poppins'),
          ),
        ],
      ),
    );
  }

  Widget _buildNewsItem(String title, String date) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(Icons.article, color: Colors.grey),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
        subtitle: Text(date),
      ),
    );
  }
}
