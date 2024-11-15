// KODE UNTUK NAVIGASI BAWAH
import 'package:flutter/material.dart';
import 'beranda.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({Key? key});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  int currentPageIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: _onItemTapped,
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Beranda',
            tooltip: 'Beranda', // Menambahkan tooltip untuk teks saat kursor diarahkan ke ikon
          ),
          NavigationDestination(
            icon: Icon(Icons.edit_document),
            label: 'Pesanan',
            tooltip: 'Pesanan', // Menambahkan tooltip untuk teks saat kursor diarahkan ke ikon
          ),
          NavigationDestination(
            icon: Icon(Icons.qr_code),
            label: 'Scan',
            tooltip: 'Scan', // Menambahkan tooltip untuk teks saat kursor diarahkan ke ikon
          ),
        ],
      ),

      body: <Widget>[
        Beranda(),   // load beranda saat menekan tombol home

        // load kategori saat menekan tomobol kategori 
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.category),
                  title: Text('Kategori'),
                  subtitle: Text('Ini Kategori'),
                ),
              ),
            ],
          ),
        ),
        
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Container(
                child: ListTile(
                  leading: Image.asset('assets/image/qr.png'),
                  title: Text('Kategori'),
                ),
              ),
            ],
          ),
        ),

        // load kategori saat menekan tombol belanja
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.shopping_cart_outlined),
                  title: Text('Belanja'),
                  subtitle: Text('ini List Belanja'),
                ),
              ),
            ],
          ),
        ),
      ][currentPageIndex],
    );
  }
}
