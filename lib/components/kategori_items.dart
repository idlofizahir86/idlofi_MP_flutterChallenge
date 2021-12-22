import 'package:flutter/material.dart';
import 'package:idlofi_flutter_challenge/theme.dart';

class Kategori extends StatelessWidget {
  final String title;
  final String imgUrl;

  const Kategori({
    Key? key,
    this.title = '',
    this.imgUrl = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: borderColor,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imgUrl,
            width: 40,
          ),
          Text(
            title,
            style: w400blackTextStyle.copyWith(
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}