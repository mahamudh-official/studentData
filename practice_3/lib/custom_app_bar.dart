import 'package:flutter/material.dart';
import 'package:practice_3/const_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: 70,
      
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'images/menu.png',
                      height: 22,
                      width: 22,
                      color: AppColors.primary,
                      ),
                    Text(
                      'Vibrant Cravings',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary
                      ),
                      ),
                    Icon(Icons.shopping_cart, size: 24,color: AppColors.primary),
                  ],
                ),
              ),
            ),
          );
  }
}