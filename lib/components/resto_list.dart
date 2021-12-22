import 'package:flutter/material.dart';
import 'package:idlofi_flutter_challenge/theme.dart';

class Resto extends StatelessWidget {
  final String namaResto;
  final String imgUrl;
  final double iniRating;
  final double jarak;
  final Widget bintangGold;
  final Widget bintangSilver;

  const Resto({
    Key? key,
    required this.namaResto,
    required this.imgUrl,
    required this.iniRating,
    required this.jarak,
    required this.bintangGold,
    required this.bintangSilver,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 70,
            child: Image.asset(
              imgUrl,
              width: 80,
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                namaResto,
                style: w600blackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Container(
                    child: Row(
                      children: List.generate(5, (index) {
                        return Container(
                            margin: EdgeInsets.only(
                              left: 1.55,
                            ),
                            child: index < iniRating.floor()
                                ? bintangGold
                                : bintangSilver);
                      }),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    iniRating.toString(),
                    style: w400grey3rdTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '$jarak km',
                style: w600blackTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class RatingItem extends StatelessWidget {
  final int index;
  final int rating;

  RatingItem({
    this.index = 0,
    this.rating = 0,
  });
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      index <= rating
          ? 'assets/icons/star_gold_icon.png'
          : 'assets/images/star_silver_icon.png',
      width: 12.36,
    );
  }
}
