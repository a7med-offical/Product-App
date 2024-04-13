import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:product/Model/ProductModel.dart';
import 'package:product/Provider/ProviderSericde.dart';
import '../Services/Servoce_Prodct.dart';
import 'package:provider/provider.dart';

class SearchWifget extends StatelessWidget {
  const SearchWifget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: TextField(
        onSubmitted: (value) async {
          ProviderProduct provider =
              Provider.of<ProviderProduct>(context, listen: false);
          provider.setSearchQuery(value);

          List<ProductModel> product =
              await ServiceProduct().getProductService(productNmae: value);
          provider.setProductList(product);
        },
        decoration: InputDecoration(
            hintText: 'Enter what you search',
            suffixIcon: const Icon(Icons.search_outlined),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(50))),
      ),
    );
  }
}
