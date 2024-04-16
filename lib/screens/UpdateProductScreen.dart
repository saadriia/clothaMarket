import 'package:clothes_market/models/Product_model.dart';
import 'package:clothes_market/services/updateProduct.dart';
import 'package:clothes_market/widgets/CustomButten.dart';
import 'package:clothes_market/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets/textField.dart';
//import 'package:clothes_market/widgets/CustomTextField.dart';

class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({super.key});
  static String id = 'UpdatePage';
  String? productName, desc, img;
  String? price;
  @override
  Widget build(BuildContext context) {

    ProductModel product =ModalRoute.of(context)!.settings.arguments as ProductModel ;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'UpdateProduct',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                CustomFormTextField(
                  onChanged: (data) {
                    productName = data;
                  },
                  hintText: 'product',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomFormTextField(
                  hintText: 'desc',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomFormTextField(
                  onChanged: (data) {
                    price = (data);
                  },
                  hintText: 'price',
                  inputType: TextInputType.number,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomFormTextField(
                  onChanged: (data) {
                    img = data;
                  },
                  hintText: 'img',
                ),
                SizedBox(
                  height: 30,
                ),
                CustomButon(
                  text: "تحديث",
                  onTap: () {
                    UpdateProductservices().updateProduct(
                      title: productName!,
                      price: price!,
                      desc: desc!,
                      image: img!,
                      category: product.category
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}
