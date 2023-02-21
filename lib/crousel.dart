import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:carousel_slider/carousel_options.dart' as carousel;

// Use carousel.CarouselOptions instead of CarouselOptions

class Product {
  final String name;
  final String image;
  final double price;

  Product({required this.name, required this.image, required this.price});
}

class ShoppingCarousel extends StatefulWidget {
  @override
  _ShoppingCarouselState createState() => _ShoppingCarouselState();
}

class _ShoppingCarouselState extends State<ShoppingCarousel> {
  List<Product> products = [
    Product(
        name: 'Product 1',
        image:
            'https://assets.myntassets.com/f_webp,fl_progressive/h_960,q_80,w_720/v1/assets/images/13769458/2021/7/8/86b11f07-7040-4dce-ad9f-1780e9ac26691625713714184-Varanga-sea-green-gota-patti-embroidery-yoke-digital-printed-1.jpg',
        price: 10.99),
    Product(
        name: 'Product 2',
        image:
            'https://assets.myntassets.com/f_webp,fl_progressive/h_960,q_80,w_720/v1/assets/images/13769458/2021/7/8/86b11f07-7040-4dce-ad9f-1780e9ac26691625713714184-Varanga-sea-green-gota-patti-embroidery-yoke-digital-printed-1.jpg',
        price: 15.99),
    Product(
        name: 'Product 3',
        image:
            'https://assets.myntassets.com/f_webp,fl_progressive/h_960,q_80,w_720/v1/assets/images/13769458/2021/7/8/86b11f07-7040-4dce-ad9f-1780e9ac26691625713714184-Varanga-sea-green-gota-patti-embroidery-yoke-digital-printed-1.jpg',
        price: 20.99),
    Product(
        name: 'Product 4',
        image:
            'https://assets.myntassets.com/f_webp,fl_progressive/h_960,q_80,w_720/v1/assets/images/13769458/2021/7/8/86b11f07-7040-4dce-ad9f-1780e9ac26691625713714184-Varanga-sea-green-gota-patti-embroidery-yoke-digital-printed-1.jpg',
        price: 25.99),
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 350,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
      ),
      items: products.map((product) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              // height: 400,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(product.image,
                      height: 200, width: double.infinity, fit: BoxFit.fill),
                  // SizedBox(height: 10),
                  Text(product.name,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('\$${product.price}', style: TextStyle(fontSize: 16)),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
