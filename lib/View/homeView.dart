import 'package:flutter/material.dart';

import '../Provider/ProviderSericde.dart';
import '../Widget/Info_Product.dart';
import '../Widget/No_DataInfo_Product.dart';
import '../Widget/Search_Widget.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProviderProduct>(context);
    final searchQuery = provider.searchQuery;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
          size: 30,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.toggle_off,
              color: Colors.black,
              size: 40,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SearchWifget(),
            const SizedBox(
              height: 10,
            ),
            searchQuery != null && searchQuery.isNotEmpty
                ? const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Info_ProductData(),
                  )
                : const NoInfoProduct(),
          ],
        ),
      ),
    );
  }
}
