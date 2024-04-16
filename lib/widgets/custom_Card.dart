import 'package:clothes_market/models/Product_model.dart';
import 'package:clothes_market/screens/UpdateProductScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:clothes_market/helper/api.dart';

// ignore: must_be_immutable
class coustomCard extends StatelessWidget {
  coustomCard({
    required this.product,
    Key? key,
  }) : super(key: key);
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductPage.id ,arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 230,
            height: 130,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 40,
                color: const Color.fromARGB(255, 255, 252, 252).withOpacity(.1),
                spreadRadius: 20,
                offset: Offset(1, 1),
              ),
            ]),
            child: Card(
              elevation: 10,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title.substring(0, 10),
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          //'    product.price.toString(),' ,
                          r'$'
                          '${product.price.toString()}',
                          style: TextStyle(fontSize: 18),
                        ),
                        Icon(
                          FontAwesomeIcons.heart,
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 15,
            top: -40,
            // bottom: 22,
            child: Image.network(
              product.image,
              height: 100,
              width: 100,
            ),
          )
        ],
      ),
    );
  }
}
