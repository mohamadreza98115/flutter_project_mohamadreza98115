import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_mohamadreza98115/components/titleText.dart';
import 'package:flutter_project_mohamadreza98115/size_config.dart';
import './../../screens/home/Categories.dart';
import './../../services/fetchProducts.dart';
import './recomandedProdects.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: TitleText(
                  key: Key('cattitle'), title: "Browse by Categories"),
            ),
            FutureBuilder(
              builder: (context, AsyncSnapshot<dynamic> snapshot) =>
                  snapshot.hasData
                      ? Categories(
                          categories: snapshot.data,
                          key: Key('value'),
                        )
                      : Center(
                          child: Image.asset("assets/ripple.gif"),
                        ),
            ),
            Divider(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child:
                  TitleText(key: Key('recomended'), title: "Recomands for you"),
            ),
            // Right Now product is our demo product
            FutureBuilder(
              future: fetchProducts(),
              builder: (context, AsyncSnapshot<dynamic> snapshot) {
                return snapshot.hasData
                    ? RecommandProducts(products: snapshot.data)
                    : Center(child: Image.asset('assets/ripple.gif'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
