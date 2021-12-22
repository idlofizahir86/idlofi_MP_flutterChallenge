import 'package:flutter/material.dart';
import 'package:idlofi_flutter_challenge/theme.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: greyColor,
      ),
      height: 45,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Image.asset(
              'assets/icons/search_icon.png',
              width: 24,
              color: black50Color,
            ),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                hintText: 'Mau makan apa hari ini?',
                hintStyle: w400grey2ndTextStyle.copyWith(
                  fontSize: 14,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}