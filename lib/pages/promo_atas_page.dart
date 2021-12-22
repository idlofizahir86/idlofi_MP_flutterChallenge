import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:idlofi_flutter_challenge/components/promo_atas_items.dart';
import 'package:idlofi_flutter_challenge/theme.dart';

class PromoAtas extends StatefulWidget {
  const PromoAtas({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PromoAtasState();
  }
}

class _PromoAtasState extends State<PromoAtas> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> promoCard = [
    PromoAtasItem(
      imgUrl: 'assets/images/promo_atas/card promo 1.png',
    ),
    PromoAtasItem(
      imgUrl: 'assets/images/promo_atas/card promo 2.png',
    ),
    PromoAtasItem(
      imgUrl: 'assets/images/promo_atas/card promo 3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: CarouselSlider(
              items: promoCard,
              carouselController: _controller,
              options: CarouselOptions(
                height: 120,
                enableInfiniteScroll: false,
                autoPlay: false,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(
                    () {
                      _current = index;
                    },
                  );
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: promoCard.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.only(
                    top: 8,
                    left: 4,
                    right: 4,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == entry.key ? greenColor : greyColor,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

