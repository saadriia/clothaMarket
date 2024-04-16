import 'package:clothes_market/helper/api.dart';
import 'package:clothes_market/models/Product_model.dart';

class UpdateProductservices {
  Future<ProductModel> updateProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required String category}) async {
    Map<String, dynamic> data =
        await Api().post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': desc,
      'image': image,
      'category': category,
    });
    return ProductModel.fromjason(data);
  }
}
