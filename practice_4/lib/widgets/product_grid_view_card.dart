import 'package:flutter/material.dart';
import 'package:practice_4/Const/app_colors.dart';

class ProductGridViewCard extends StatelessWidget {
  const ProductGridViewCard({
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
      height: 220,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            spreadRadius: 5
          )
        ]
      ),      
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
            child: SizedBox(
              height: 100,

              child: Image.network(
                imageUrl,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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

                    Spacer(),
                    
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
              ),
            ),
          )
        ],
      ),
    );
  }
}