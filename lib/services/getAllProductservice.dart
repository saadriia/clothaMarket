
import 'package:clothes_market/models/Product_model.dart';
import 'package:clothes_market/helper/api.dart';

class Allproductservice {
  Future<List<ProductModel>> getAllPrrduct() async {

     List<dynamic> data =  
         await Api().get(url:'https://fakestoreapi.com/products');
  
  List<ProductModel> productList = [];
  for (int i = 0; i < data.length; i++) {
    productList.add(
      ProductModel.fromjason(data[i]),
    );
  }
  return productList;
}
  }

