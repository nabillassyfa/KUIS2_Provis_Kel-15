import 'dart:ui';
import 'package:flutter/material.dart';
import 'beranda.dart';
import 'landingPage.dart';


class LP1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row( 
          children: [
            Container(
              margin: EdgeInsets.only(left: 10), 
              width: 70,
              height: 30,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Beranda()));
                },
                child: Text(
                  "Lewati",
                  style: TextStyle(color: Color.fromARGB(255, 255,158,181), fontSize: 10),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: Color.fromARGB(255, 255,158,181)), 
              ),
            ),
          ],
        ),
      ),

      body: SafeArea(
        child: Container(

          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/image/lp.png")
                      )
                    ),
                  ),
                  RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Ilmu Komputer C2 ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black, 
                        ),
                      ),
                      TextSpan(
                        text: "Kelompok 15",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color.fromARGB(255, 255, 133, 162), 
                        ),
                      ),
                      TextSpan(
                        text: " Kuis 2 Provis",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black, 
                        ),
                      ),
                    ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("[2202869] Revana Faliha Salma. ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 12,

                  ),
                  ),
                  Text("[2205297] Nabilla Assyfa Ramadhani. ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 12,

                  ),
                  ),
                ],
              ),
              

              Column(
                children: <Widget>[
                  SizedBox(height:20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 50,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LP2()));

                    },
                    color: Color.fromARGB(255, 255, 133, 162),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                      "Selanjutnya",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                      ),
                    ),
                  )

                ],
              )
            ],
          ),
        ),
        
      ),
    );
  }
}

