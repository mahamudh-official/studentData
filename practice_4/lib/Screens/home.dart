

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:practice_4/Const/app_colors.dart';
import 'package:practice_4/Const/category_list.dart';
import 'package:practice_4/Const/product_list.dart';

import 'package:practice_4/widgets/category_card.dart';
import 'package:practice_4/widgets/custom_app_bar.dart';
import 'package:practice_4/widgets/product_grid_view.dart';


import 'package:practice_4/widgets/product_list_view.dart';


class LuxeMart extends StatefulWidget {
  const LuxeMart({super.key});

  @override
  State<LuxeMart> createState() => _LuxeMartState();
}

class _LuxeMartState extends State<LuxeMart> {

  bool isGridView = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPosts();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.nutral,
      body: SafeArea(
        child: Stack(
          
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.only(top: 95, right: 16, left: 16),
              child: Column(
                children: [
                  
                  Container(
                    height: 450,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(Colors.black.withValues(alpha: 0.5), BlendMode.luminosity),
                        image: AssetImage(
                          'images/image.png'
                        ),
                        fit: BoxFit.cover
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(48, 100, 72, 56),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'SEASONAL DROP',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            'Summer',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 36,
                              
                            ),
                          ),
                          
                          Text(
                            'Collection',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 36,
                              
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Experience the pinnacle of summer elegance with our curated articanal selections.',
                            style: TextStyle(
                              color: Colors.white,
                              
                              fontSize: 17,
                              
                            ),
                          ),
                          Spacer(),
                          GestureDetector(
                            
                            child: Container(
                              padding: EdgeInsetsGeometry.symmetric(
                                horizontal: 40,
                                vertical: 10
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.secondary,
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Text(
                                'Shop Now'
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16,),
                  SizedBox(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Categories',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Spacer(),
                            Text(
                              'View All',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 120,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,             
                            separatorBuilder: (context, index) => SizedBox(width: 16,), 
                            itemCount: categoryList.length,
                            itemBuilder: (context, index)=> CategoryCard(
                              icon: categoryList[index]['icon'] as IconData, 
                              title: categoryList[index]['title'] as String
                            )
                          )
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  SizedBox(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'New Arrivals',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Spacer(),

                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isGridView=true;
                                });
                              }, 
                              child: Icon(
                                Icons.grid_view,
                                size: 16,
                                color: isGridView?
                                Colors.black:Colors.grey
                              )
                            ),

                            SizedBox(width: 10,),

                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isGridView=false;
                                });
                              }, 
                              child: Icon(
                                Icons.list_alt,
                                size: 16,
                                color: isGridView?
                                Colors.grey:Colors.black,
                              )
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        productList.isEmpty?
                        Center(child: CircularProgressIndicator(),):
                        isGridView
                          ? MyProductGridView()
                          : MyProductListView(),
                        
                        
                      ],
                      
                    ),
                  )
                ],
              ),
            ),
        
            MyCustomAppBar()
          ],
        ),
      ),
    );
  }

  Future<void> getPosts() async {
    final response = await http.get(
      Uri.parse(
        'https://kolzsticks.github.io/Free-Ecommerce-Products-Api/main/products.json',
      ),
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      setState(() {
        productList.clear();
        productList.addAll(data);
        print(productList.length);
      });
    }
  }
}



