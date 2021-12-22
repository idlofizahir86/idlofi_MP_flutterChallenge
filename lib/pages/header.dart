import 'package:flutter/material.dart';
import 'package:idlofi_flutter_challenge/components/search_bar.dart';
import 'package:idlofi_flutter_challenge/theme.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 4,
              vertical: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/icons/arrow_back.png',
                          width: 16,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Alamatmu',
                            style: w400blackTextStyle.copyWith(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'Jl. Soekarno Hatta No.4,\nMadiun',
                            style: w600blackTextStyle.copyWith(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/icons/history_icon.png',
                  width: 24,
                ),
              ],
            ),
          ),
          SearchBar()
        ],
      ),
    );
  }
}


