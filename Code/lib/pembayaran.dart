import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pembayaran_sukses.dart';


class Pembayaran extends StatefulWidget {

  @override
  State<Pembayaran> createState() => _PembayaranState();
}

class _PembayaranState extends State<Pembayaran> {
  int count = 1;

  void addCount() {
    count = count + 1;
    setState(() {});
  }

  void removeCount() {
    if (count != 0) {
      count = count - 1;
      setState(() {});
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255,255,184,201),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_circle_left_outlined,
            size: 30,
            color: Colors.white,
          ),
        ),
        flexibleSpace: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                "Konfirmasi Pesanan",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // height: MediaQuery.of(context).size.height * 0.2,
            color: Color.fromARGB(255, 255,229,235),
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Row(
              children: [
               Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/image/lp.png")
                      )
                    ),
                  ),
                Column(
                  children: [
                    Text(
                      'GRFood',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Rp 15.000',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    
                    Row(
                      children: [
                        IconButton(
                        onPressed: removeCount,
                        icon: const Icon(
                          Icons.remove_circle_outline,
                          color: Color.fromARGB(255, 255,158,181),
                          size: 20,
                        ),
                      ),
                      Text(
                        count.toString(),
                        style: const TextStyle(
                            color: Color.fromARGB(255, 255,158,181),
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                      IconButton(
                        onPressed: addCount,
                        icon: const Icon(
                          Icons.add_circle_outline,
                          color: Color.fromARGB(255, 255,158,181),
                          size: 20,
                        ),
                      ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            color: Color.fromARGB(255, 255,229,235),
            padding: const EdgeInsets.only(left: 20, top: 16, right: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Catatan"
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Total Pesanan"
                    ),
                    Spacer(),
                    Text(
                      "Rp 15.000"
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            color: Color.fromARGB(255, 255,229,235),
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.monetization_on_sharp,
                    ),
                    Text(
                      "Pilih metode pembayaran"
                    ),
                    Spacer(),
                    Text(
                      "BRI"
                    ),
                    SizedBox(width: 3,),
                    Icon(
                      Icons.arrow_forward_ios_sharp
                    )
                  ],
                ),
                SizedBox(height: 5,),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.black,
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Text(
                    "total pesanan"
                    ),
                    Spacer(),
                    Text(
                      "Rp 15.000"
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Text(
                    "biaya pengiriman"
                    ),
                    Spacer(),
                    Text(
                      "Rp 5.000"
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Text(
                    "biaya layanan"
                    ),
                    Spacer(),
                    Text(
                      "Rp 1.000"
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Text(
                    "total "
                    ),
                    Spacer(),
                    Text(
                      "Rp 21.000"
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
           Container(
            height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.bottomCenter,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.shopping_cart_outlined,
                            color: Color.fromARGB(255, 255, 133, 162),
                            size: 30,
                          ),
                          Text(
                            "total pesanan"
                          )
                        ],
                      ),
                      Text(
                        "21.000",
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PembayaranSukses(),
                          ),
                        );
                      },
                      child: Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                          color: Color.fromARGB(255, 255, 133, 162),
                        ),
                        child: Center(
                          child: Text(
                            "Bayar Sekarang",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
    );       
  }
}

