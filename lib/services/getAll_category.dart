import 'dart:convert';

import 'package:clothes_market/helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategires() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');
     
      return data;
    
  }
}
