import 'package:flutter/material.dart';
import 'package:idlofi_flutter_challenge/components/resto_items.dart';
import 'package:idlofi_flutter_challenge/theme.dart';

class RestoPage extends StatelessWidget {
  const RestoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Wah ada resto enak, loh!',
                      style: w600blackTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Yuk cobain!',
                      style: w400blackTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          PilihanResto(),
        ],
      ),
    );
  }
}
