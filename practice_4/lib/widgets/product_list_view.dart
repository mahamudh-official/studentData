import 'package:flutter/material.dart';
import 'package:practice_4/Const/product_list.dart';
import 'package:practice_4/widgets/product_list_view_card.dart';

class MyProductListView extends StatelessWidget {
  const MyProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,      
      
      itemCount: productList.length,
      itemBuilder: (context, index) => Column(
        children: [
          ProductListViewCard(
            
            imageUrl: productList[index]['image'] as String, 
            category: productList[index]['category'] as String, 
            rating: (productList[index]['rating']as Map<String, dynamic>) ['stars'].toString(),
            name: productList[index]['name'] as String, 
            price: productList[index]['priceCents'].toString()
          ),
          SizedBox(height: 16,)
        ],
      ), 
    );
  }
}