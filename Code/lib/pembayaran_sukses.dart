import 'package:flutter/material.dart';
import 'package:flutter_application_1/beranda.dart';

class PembayaranSukses extends StatefulWidget {
  const PembayaranSukses({super.key});

  @override
  State<PembayaranSukses> createState() => _PembayaranSuksesState();
}

class _PembayaranSuksesState extends State<PembayaranSukses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Pembayaran',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Color.fromARGB(255, 255, 133, 162), // Atur warna garis sesuai keinginan
              thickness: 2, // Atur ketebalan garis
            ),
            SizedBox(
              height: 10,
            ),
            Icon(
              Icons.check_circle_rounded,
              color: Color.fromARGB(255, 255, 133, 162),
              size: 170,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Transaksi Berhasil!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '06-Mei 2024 . 20.31 WIB',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 160,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color.fromARGB(255, 255, 133, 162),
              width: 2,
            ),
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20),
            MaterialButton(
              minWidth: 380,
              height: 50,
              onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const PembayaranSukses()), // Ganti ProfilePage dengan halaman profil yang ingin ditampilkan
                    (Route<dynamic> route) => false,
                  );
                },
              color: Color.fromARGB(255, 255, 133, 162),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                "Lihat Rincian",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const Beranda()), // Ganti ProfilePage dengan halaman profil yang ingin ditampilkan
                  (Route<dynamic> route) => false,
                );
              },
              child: Text(
                'Kembali ke beranda',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 133, 162),
                  decoration: TextDecoration.underline,
                  decorationColor: Color.fromARGB(255, 255, 133, 162),
                  decorationThickness: 3,
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}