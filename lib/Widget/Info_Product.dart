import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Model/ProductModel.dart';
import '../Provider/ProviderSericde.dart';
import '../Services/Servoce_Prodct.dart';
import 'NotFoundSearch.dart';

class Info_ProductData extends StatelessWidget {
  const Info_ProductData({Key? key});

  @override
  Widget build(BuildContext context) {
    String searchQuery = Provider.of<ProviderProduct>(context).searchQuery;

    return FutureBuilder(
      future: ServiceProduct().getProductService(productNmae: searchQuery),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
              child: Center(child: CircularProgressIndicator()));
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (snapshot.hasData) {
          List<ProductModel>? products = snapshot.data as List<ProductModel>?;
          if (products == null || products.isEmpty) {
            return const NotFound();
          } else {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    title: Text(
                      products[index].title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          NetworkImage(products[index].image!, scale: .5),
                    ),
                    subtitle: Text(
                      maxLines: 2,
                      products[index].description!,
                      style: const TextStyle(),
                    ),
                    trailing: Text('\$${products[index].price}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22)),
                  ),
                );
              },
            );
          }
        } else {
          return Container();
        }
      },
    );
  }
}
