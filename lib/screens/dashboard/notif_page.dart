import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class NotifPage extends StatelessWidget {
  final List<RemoteMessage> notifications;

  const NotifPage({super.key, required this.notifications});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Notifikasi",
          style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: notifications.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.notifications_off_outlined,
                    size: 80,
                    color: Colors.grey[300],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Belum ada notifikasi baru",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            )
          : ListView.separated(
              itemCount: notifications.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                final notification = notifications.reversed
                    .toList()[index]
                    .notification;
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: const Color(0xFFE3F2FD),
                    child: const Icon(
                      Icons.notifications,
                      color: Color(0xFF304D6D),
                    ),
                  ),
                  title: Text(
                    notification?.title ?? "Info Kampus",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  subtitle: Text(
                    notification?.body ?? "Tidak ada konten",
                    style: const TextStyle(fontFamily: 'Inter'),
                  ),
                  trailing: const Text(
                    "Baru",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                    ),
                  ),
                );
              },
            ),
    );
  }
}
