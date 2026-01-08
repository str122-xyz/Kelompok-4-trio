# 🎓 Ingpoglb App - Portal Informasi Kampus

![Flutter](https://img.shields.io/badge/Flutter-3.0-blue?style=for-the-badge&logo=flutter)
![Firebase](https://img.shields.io/badge/Firebase-Enabled-orange?style=for-the-badge&logo=firebase)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

**Project UAS Mobile Programming - Kelompok 4 Trio**

**Ingpoglb App** adalah aplikasi mobile berbasis Flutter yang dirancang sebagai portal akademik mahasiswa modern. Aplikasi ini mempermudah mahasiswa untuk mengakses jadwal kuliah, informasi keuangan, profil tim, serta menerima pengumuman kampus secara *real-time* melalui notifikasi.

---

## 🔥 Fitur Utama

### 1. 🔐 Autentikasi & Keamanan
* **Login System:** Terintegrasi penuh dengan **Firebase Authentication**.
* **Splash Screen Pintar:** Logika *Check First Seen* menggunakan `SharedPreferences`.
    * *Pengguna Baru:* Splash 1 -> Onboarding -> Login.
    * *Sudah Login:* Langsung diarahkan ke Dashboard.
    * *Sudah Logout:* Langsung diarahkan ke Login Page.

### 2. 🏠 Dashboard Mahasiswa (Portal)
* **Dynamic Greeting:** Sapaan personal ("Halo, [Nama]!") yang berubah sesuai akun login.
* **Banner Informasi:** 4 Banner (Jadwal UAS, Ujian Susulan, dll) yang dapat diklik untuk detail.
* **Menu Grid:** Navigasi cepat ke fitur Jadwal, Nilai, Presensi, dan Keuangan.
* **UI Modern:** Menggunakan tema gradasi warna *Biru* (`#304D6D` to `#63ADF2`).

### 3. 🔔 Notifikasi Real-time (FCM)
* **Firebase Cloud Messaging:** Mendukung push notification baik saat aplikasi dibuka (*foreground*) maupun ditutup (*background*).
* **Notification Badge:** Indikator angka merah pada ikon lonceng saat ada pesan baru.
* **Notification History:** Halaman khusus untuk melihat riwayat notifikasi yang masuk.

### 4. 👤 Profil & Tim
* **Dynamic Profile:** Nama dan inisial di Drawer berubah otomatis sesuai email yang login.
* **Team Profile:** Halaman khusus yang menampilkan daftar anggota Kelompok 4 Trio.
* **Logout:** Fitur keluar aplikasi dengan pembersihan sesi yang aman.

---

## 🛠️ Teknologi yang Digunakan

* **Framework:** [Flutter](https://flutter.dev/) (Dart SDK)
* **Backend:** [Firebase](https://firebase.google.com/)
    * **Auth:** Manajemen User (Login/Logout).
    * **Cloud Messaging (FCM):** Pengiriman Notifikasi.
* **State Management:** `setState` (Native).
* **Local Storage:** `shared_preferences` (Menyimpan status onboarding).
* **UI Components:** `google_fonts` (Poppins), `lottie` (Animasi), `badges` (Notifikasi).

---

## 👥 Kelompok 4 Trio

| No | NIM | Nama | Role |
| :--- | :--- | :--- | :--- |
| 1. | 1123150070 | Satria Herlambang | `Team Leader` |
| 2. | 1123150028 | Ahmad Zein Adli W. | `Mobile Developer` |
| 3. | 1123150029 | Mohamad Enzho Yuliawan | `UI/UX Designer` |
| 4. | 1123150086 | Felan Ardenta Yoga | `Backend Integration` |
| 5. | 1123150087 | Sadam Irham Marami | `Fullstack Developer` |

---

## 📸 Screenshot Aplikasi

---

## 🚀 Cara Instalasi & Menjalankan

## 1. Clone Repository
```bash
git clone https://github.com/str122-xyz/Kelompok-4-trio.git
cd ingpoglb-app
```

## 2. Install Dependencies
```bash
    flutter clean
    flutter pub get
```

## 3. Jalankan Aplikasi
```bash
    flutter run
```

---

## Dokumentasi


---

## Download Aplikasi