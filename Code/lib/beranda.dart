import 'package:flutter/material.dart';
import 'items_widget.dart';
import 'provider/P_items.dart';
import 'package:provider/provider.dart';
import 'keranjang.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductProvider()..getProducts(),
      child: Scaffold(
  appBar: AppBar(
    elevation: 1,
    backgroundColor: Color.fromARGB(255, 255, 133, 162),
    title: const Text(
      'GRFood',
      style: TextStyle(color: Colors.black),
    ),
    actions: [
      Container(
        width: MediaQuery.of(context).size.width * 0.5, 
        child: TextField(
          decoration: InputDecoration(
            hintText: "Cari",
            hintStyle: TextStyle(color: Colors.grey.shade600),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey.shade600,
              size: 20,
            ),
            filled: true,
            fillColor: Colors.grey.shade100,
            contentPadding: EdgeInsets.all(8),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.grey.shade100,
              ),
            ),
          ),
        ),
      ),
      Stack(
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShoppingCartScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
              size: 25,
            ),
          ),
          Positioned(
            top: 0,
            right: 3,
            child: Container(
              height: 20,
              width: 20,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: const Center(
                child: Text(
                  "2",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  ),
          
        body: Consumer<ProductProvider>(
          builder: (context, value, child) {
            if (value.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return Container(
              padding: const EdgeInsets.all(10),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 2,
                  childAspectRatio: 0.65,
                ),
                itemBuilder: (context, index) {
                  return ItemWidget(product: value.products[index]);
                },
                itemCount: value.products.length,
               ),
            );
          },
        )
        ),
    );
  }
}


