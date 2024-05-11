import 'package:flutter/material.dart';
import 'package:flutter_application_1/pembayaran.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({Key? key}) : super(key: key);

  @override
  _ShoppingCartScreenState createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
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
                "Keranjang Pesanan",
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
                        "harga",
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
                          // Navigasi ke layar pembayaran
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Pembayaran(),
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

