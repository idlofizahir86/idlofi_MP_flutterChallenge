import 'package:flutter/material.dart';
import 'package:idlofi_flutter_challenge/components/kategori_items.dart';
import 'package:idlofi_flutter_challenge/theme.dart';

class KategoriPage extends StatelessWidget {
  const KategoriPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Pilih Kategori',
                style: w600blackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              Text(
                'Lihat Semua',
                style: w400greenTextStyle.copyWith(
                  fontSize: 14,
                ),
              )
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Kategori(
                title: 'Menu Sehat',
                imgUrl: 'assets/icons/fxemoji_potoffood.png',
              ),
              Kategori(
                title: 'Promo',
                imgUrl: 'assets/icons/promo_icon.png',
              ),
              Kategori(
                title: 'Menu Ayam',
                imgUrl: 'assets/icons/whh_chicken.png',
              ),
              Kategori(
                title: 'Cepat Saji',
                imgUrl: 'assets/icons/fast-food 1.png',
              ),
            ],
          )
        ],
      ),
    );
  }
}


