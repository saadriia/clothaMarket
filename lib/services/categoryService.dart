import 'dart:convert';

import 'package:clothes_market/models/Product_model.dart';
import 'package:clothes_market/helper/api.dart';

class categoryService {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(
          url: 'https://fakestoreapi.com/products/category/$categoryName');

    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(
        ProductModel.fromjason(data[i]),
      );
    }
    return productList;
  }
}
