import 'package:clothes_market/helper/api.dart';
import 'package:clothes_market/models/Product_model.dart';
import 'package:clothes_market/services/getAllProductservice.dart';
import 'package:clothes_market/widgets/custom_Card.dart';
//import 'package:clothes_market/widgets/custom_Card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.cartPlus,
                color: Colors.black,
              ))
        ],
        backgroundColor: Colors.white10,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          '4U Store',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 50),
        child: FutureBuilder<List<ProductModel>>(
            future: Allproductservice().getAllPrrduct(),
            builder: (context, snapshot) {
             
              if (snapshot.hasData) {
                 List<ProductModel> products = snapshot.data!;
                 
                return GridView.builder(
                  itemCount:products.length,
                    clipBehavior: Clip.none,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.8,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 50,
                    ),
                    itemBuilder: (context, index) {
                      return coustomCard(
                        product: products[index],
                      );
                    });
              } else {
                return Center(child: CircularProgressIndicator(),);
              }
            },
            ),
      ),
    );
  }
}
