import 'package:flutter/material.dart';

class PromoAtasItem extends StatelessWidget {
  final String imgUrl;
  const PromoAtasItem({
    Key? key,
    this.imgUrl = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 312,
      height: 120,
      child: Image.asset(
        imgUrl,
      ),
    );
  }
}
