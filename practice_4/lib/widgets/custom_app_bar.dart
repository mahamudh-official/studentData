import 'package:flutter/material.dart';

class MyCustomAppBar extends StatelessWidget {
  const MyCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(width: 0.3)),
                color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'images/menu.png',
                      height: 20,
                      width: 20,
                      fit: BoxFit.contain,
                    ),
                
                    Text(
                      'LUXE',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                
                    Icon(
                      Icons.shopping_cart_outlined,
                    )
                        
                  ],
                ),
              ),
            );
  }
}