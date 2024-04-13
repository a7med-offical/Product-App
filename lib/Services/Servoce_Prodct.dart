import 'package:dio/dio.dart';
import 'package:product/Model/ProductModel.dart';

class ServiceProduct {
  final Dio dio = Dio();
  Future<List <ProductModel>> getProductService({required String productNmae}) async {
    Response response =
        await dio.get('https://dummyjson.com/products/search?q=$productNmae');

    Map<String, dynamic> data = response.data;
    List<dynamic> dataModel = data['products'];
    List<ProductModel> dataList = [];

    for (int i = 0; i < dataModel.length; i++) {
      dataList.add(ProductModel.fromJson(dataModel[i]));
    }
    return dataList;
  }
}
