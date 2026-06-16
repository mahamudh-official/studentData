import 'package:flutter/material.dart';
import 'package:practice_4/Const/product_list.dart';
import 'package:practice_4/widgets/product_grid_view_card.dart';

class MyProductGridView extends StatelessWidget {
  const MyProductGridView({super.key});

  

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: productList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.75,
      ),
      itemBuilder: (context, index) {
        return ProductGridViewCard(
          name: productList[index]['name'] as String,
          category: productList[index]['category'] as String,
          rating:
              (productList[index]['rating'] as Map<String, dynamic>)['stars']
                  .toString(),
          imageUrl: productList[index]['image'] as String,
          price: productList[index]['priceCents'].toString(),
        );
      },
    );
  }
}


