import 'package:flutter/material.dart';
import 'package:idlofi_flutter_challenge/theme.dart';

class VoilaMenu extends StatelessWidget {
  final String imgUrl;
  final String namaMenu;
  final double hargaDiskon;
  final double hargaAsli;
  const VoilaMenu({
    Key? key,
    this.imgUrl = '',
    this.namaMenu = '',
    this.hargaDiskon = 0,
    this.hargaAsli = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16,
      ),
      height: 170,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 10,
            color: Color.fromRGBO(0, 0, 0, 0.12),
          ),
        ],
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                imgUrl,
                height: 170,
                width: 160,
              ),
              Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(6),
                    bottomRight: Radius.circular(6),
                  ),
                ),
                padding: EdgeInsets.only(
                  top: 12,
                  left: 12,
                ),
                height: 60,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      namaMenu,
                      style: w400blackTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Text(
                          hargaDiskon.toStringAsFixed(3),
                          style: w600blackTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          hargaAsli.toStringAsFixed(3),
                          style: w600greyTextStyle.copyWith(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 14,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
