import 'package:flutter/material.dart';
import 'package:idlofi_flutter_challenge/components/resto_list.dart';
import 'package:idlofi_flutter_challenge/theme.dart';

class PilihanResto extends StatelessWidget {
  const PilihanResto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: TabBar(
              indicatorWeight: 3,
              indicatorColor: greenColor,
              labelStyle: w600greyTextStyle.copyWith(
                fontSize: 16,
              ),
              labelColor: greenColor,
              unselectedLabelColor: grey3rdColor,
              tabs: [
                Tab(
                  text: 'Terbaru',
                ),
                Tab(
                  text: 'Populer',
                ),
                Tab(
                  text: 'Rekomendasi',
                ),
              ],
            ),
          ),
          Container(
            height: 300,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: greyColor,
                  width: 1,
                ),
              ),
            ),
            child: TabBarView(
              children: <Widget>[
                Container(
                  child: Center(
                    child: Text(
                      'Terbaru',
                      style: w600blackTextStyle.copyWith(fontSize: 22),
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Resto(
                      bintangGold: Image.asset(
                        'assets/icons/star_gold_icon.png',
                        width: 12.36,
                      ),
                      bintangSilver: Image.asset(
                        'assets/icons/star_silver_icon.png',
                        width: 12.36,
                      ),
                      imgUrl: 'assets/images/resto/pizzaHut.png',
                      namaResto: 'Pizza Hut',
                      jarak: 3.4,
                      iniRating: 4.5,
                    ),
                    Resto(
                      bintangGold: Image.asset(
                        'assets/icons/star_gold_icon.png',
                        width: 12.36,
                      ),
                      bintangSilver: Image.asset(
                        'assets/icons/star_silver_icon.png',
                        width: 12.36,
                      ),
                      imgUrl: 'assets/images/resto/kfc.png',
                      namaResto: 'KFC',
                      jarak: 4.8,
                      iniRating: 4.7,
                    ),
                    Resto(
                      bintangGold: Image.asset(
                        'assets/icons/star_gold_icon.png',
                        width: 12.36,
                      ),
                      bintangSilver: Image.asset(
                        'assets/icons/star_silver_icon.png',
                        width: 12.36,
                      ),
                      imgUrl: 'assets/images/resto/mcD.png',
                      namaResto: 'McDonald',
                      jarak: 8.9,
                      iniRating: 4.6,
                    ),
                  ],
                ),
                Container(
                  child: Center(
                    child: Text(
                      'Rekomendasi',
                      style: w600blackTextStyle.copyWith(fontSize: 22),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
