import 'package:flutter/material.dart';
import 'package:idlofi_flutter_challenge/pages/promo_atas_page.dart';
import 'package:idlofi_flutter_challenge/pages/header.dart';
import 'package:idlofi_flutter_challenge/pages/kategori_page.dart';
import 'package:idlofi_flutter_challenge/pages/resto_page.dart';
import 'package:idlofi_flutter_challenge/pages/voila_promo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Header(),
                SizedBox(
                  height: 40,
                ),
                PromoAtas(),
                SizedBox(
                  height: 20,
                ),
                KategoriPage(),
                SizedBox(
                  height: 25,
                ),
                VoilaPromo(),
                SizedBox(
                  height: 24,
                ),
                RestoPage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
