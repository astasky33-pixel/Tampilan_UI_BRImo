import 'package:flutter/material.dart';

void main() {
  runApp(BRImoUI());
}

class BRImoUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF00529C),
                    Color(0xFF007BFF),
                  ],
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("BRImo",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          Text("Selamat Malam",
                              style: TextStyle(color: Colors.white70)),
                          Text("MOH.SEPTIANTO H.A",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),

                      Row(
                        children: [
                          Icon(Icons.notifications, color: Colors.white),
                          SizedBox(width: 12),
                          Icon(Icons.headset_mic, color: Colors.white),
                        ],
                      )

                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}