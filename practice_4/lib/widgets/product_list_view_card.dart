import 'package:flutter/material.dart';
import 'package:practice_4/Const/app_colors.dart';

class ProductListViewCard extends StatelessWidget {
  const ProductListViewCard({
    super.key,
    required this.imageUrl,
    required this.category,
    required this.rating,
    required this.name,
    required this.price
  });

  final String imageUrl,category,rating,price,name;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 0.3),
        boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.05),
          blurRadius: 10,
          spreadRadius: 4
        )]
      ),
      height: 116,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(16),
              
              child: Image.network(
                imageUrl,
                height: 100,
                width: 100,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(width: 8,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        category,
                        maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: AppColors.tertiary,
                        fontSize: 12
                      ),
                      ),
                      Spacer(),
                      Icon(Icons.star_border_outlined, color: AppColors.secondary,size: 12,),
                      Text(
                        rating,
                        style: TextStyle(
                          color: AppColors.tertiary,
                          fontSize: 12
                      ),
                      )
                    ],
                  ),
                  Text(
                    name,
                    maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
            
                      ),
                  ),
                  Row(
                    
                    children: [
                      Text(
                        '\$${price}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 16,
                          backgroundColor: AppColors.secondary,
                          child: Icon(
                            Icons.shopping_cart_checkout_outlined,
                            color: Colors.white,
                            size: 16,
                            
                          ),
                      )
                    ],
                  )
              
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }
}