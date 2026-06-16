import 'package:flutter/material.dart';
import 'package:practice_4/Const/app_colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.icon,
    required this.title
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.primary.withOpacity(0.15),
            foregroundColor: Colors.black,
            radius: 48,
            child: Icon(icon, size: 28,),
          ),
          Text(title, style: TextStyle(
            fontSize: 12
          ),)
        ],
      ),
    );
  }
}