import 'package:flutter/material.dart';
import 'package:practice_3/const_colors.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.icon,
    required this.title,
    });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      child: Column(
        children: [
          Container(
            height: 77,
            width: 77,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 15,
                  spreadRadius: 2,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Icon(icon,size: 36,color: AppColors.secondary),
          ),
          SizedBox(height: 4,),
          Text(title, style: TextStyle(
            fontSize: 16
          ),)
        ],
      ),
    );
  }
}
