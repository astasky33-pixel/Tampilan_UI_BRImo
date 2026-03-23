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

  Widget menuUtama(IconData icon, String title) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(icon, color: Color(0xFF00529C), size: 26),
        ),
        SizedBox(height: 6),
        Text(
          title,
          style: TextStyle(fontSize: 12, color: Colors.black),
        )
      ],
    );
  }

  Widget menuGrid(IconData icon, String title) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(14),
          ),
          child: Icon(icon, size: 28, color: Color(0xFF00529C)),
        ),
        SizedBox(height: 6),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 11),
        ),
      ],
    );
  }

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
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Selamat Malam",
                            style: TextStyle(color: Colors.white70),
                          ),
                          Text("MOH.SEPTIANTO H.A",
                            style: TextStyle(color: Colors.white),
                          ),
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

            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  )
                ]
              ),
              child: Column(
                children: [

                  Container(
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF00529C),
                          Color(0xFF007BFF),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text("Saldo Rekening Utama",
                          style: TextStyle(color: Colors.white70),
                        ),

                        SizedBox(height: 10),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Rp7.672.000,00",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.visibility, color: Colors.white)
                          ],
                        ),

                        SizedBox(height: 10),
                        Divider(color: Colors.white54),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Semua Rekeningmu",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(Icons.arrow_forward, color: Colors.white)
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      menuUtama(Icons.swap_horiz, "Transfer"),
                      menuUtama(Icons.account_balance_wallet, "BRIVA"),
                      menuUtama(Icons.water_drop, "PDAM"),
                      menuUtama(Icons.phone_android, "Pulsa/Data"),
                    ],
                  ),

                ],
              ),
            ),

            Container(
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: DecorationImage(
                  image: AssetImage("assets/images/promo.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          SizedBox(width: 8),
                          Text("Cari Fitur")
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFFE6F0FA),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text("Atur Fitur"),
                  )
                ],
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  menuGrid(Icons.account_balance_wallet, "Top Up"),
                  menuGrid(Icons.credit_card, "BRIZZI"),
                  menuGrid(Icons.receipt_long, "Tagihan"),
                  menuGrid(Icons.swap_horiz, "Transfer"),
                  menuGrid(Icons.shopping_bag, "Lifestyle"),
                  menuGrid(Icons.account_balance, "Setor & Tarik"),
                  menuGrid(Icons.menu_book, "Catatan"),
                  menuGrid(Icons.show_chart, "Investasi"),
                  menuGrid(Icons.volunteer_activism, "Donasi"),
                  menuGrid(Icons.phone_iphone, "Virtual Debit"),
                  menuGrid(Icons.credit_card_outlined, "Kartu Kredit"),
                  menuGrid(Icons.security, "Asuransi"),
                  menuGrid(Icons.account_balance_wallet_outlined, "Pinjaman"),
                  menuGrid(Icons.currency_exchange, "Konversi Valas"),
                  menuGrid(Icons.business, "Produk BRI Lainnya"),
                ],
              ),
            ),

            SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}