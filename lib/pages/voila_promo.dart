import 'package:flutter/material.dart';
import 'package:idlofi_flutter_challenge/components/voila_menu_items.dart';
import 'package:idlofi_flutter_challenge/theme.dart';

class VoilaPromo extends StatelessWidget {
  const VoilaPromo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteColor,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Voila Promo!',
                      style: w600blackTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Ada promo apa ya di sini?',
                      style: w400blackTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Lihat Semua',
                  style: w400greenTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 175,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                VoilaMenu(
                  imgUrl: 'assets/images/voila_promo/voila1.png',
                  namaMenu: 'Beef Crispy',
                  hargaDiskon: 12.500,
                  hargaAsli: 15.000,
                ),
                VoilaMenu(
                  imgUrl: 'assets/images/voila_promo/voila2.png',
                  namaMenu: 'Beef Crispy',
                  hargaDiskon: 22.000,
                  hargaAsli: 24.000,
                ),
                VoilaMenu(
                  imgUrl: 'assets/images/voila_promo/voila3.png',
                  namaMenu: 'Beef Crispy',
                  hargaDiskon: 10.500,
                  hargaAsli: 15.000,
                ),
                SizedBox(
                  width: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
