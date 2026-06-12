import 'package:flutter/material.dart';
import 'package:practice_3/const_colors.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({
    super.key,
    required this.name,
    required this.price,
    required this.image
  });

  final String name;
  final String price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          children: [
            Stack(
              
              children: [ 
                Image.network(
                  width: 300,
                  height: 150,
                  image,
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.star,color: AppColors.primary,size: 20,),
                      SizedBox(width: 4,),
                      Text('4.8',style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                )
              ]
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          price,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

