
import 'package:flutter/material.dart';
import 'package:practice_3/category_item.dart';
import 'package:practice_3/const_colors.dart';
import 'package:practice_3/custom_app_bar.dart';
import 'package:practice_3/popular_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FoodDeliveryApp(),
      
      );
  }
}

class FoodDeliveryApp extends StatefulWidget {
  const FoodDeliveryApp({super.key});

  @override
  State<FoodDeliveryApp> createState() => _FoodDeliveryAppState();
}

class _FoodDeliveryAppState extends State<FoodDeliveryApp> {

  final categories = [
    {
      "icon": Icons.local_pizza,
      "title": "Pizza",
    },

    {
      "icon": Icons.lunch_dining,
      "title": "Burger",
    },

    {
      "icon": Icons.set_meal,
      "title": "Sushi",
    },

    {
      "icon": Icons.icecream,
      "title": "Dessert",
    },

    {
      "icon": Icons.healing,
      "title": "Health",
    },
  ];

  final pages = [
    {
      "icon": Icons.home,
      "title": "Home",
    },

    {
      "icon": Icons.search,
      "title": "Search",
    },

    {
      "icon": Icons.list_rounded,
      "title": "Orders",
    },

    {
      "icon": Icons.person,
      "title": "Profile",
    },
  ];

  int selectedItem = 0;

  Widget navItem (IconData icon, int index, String title) {
    bool isSelected = selectedItem == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItem = index;
        });
      },
      child: AnimatedContainer(
        duration: Duration(
          milliseconds: 205
        ),
        decoration: BoxDecoration(
          color: isSelected?
          AppColors.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(30)
        ),
        margin: EdgeInsets.fromLTRB(0, 10, 0, 15),
        padding: isSelected?
         EdgeInsets.fromLTRB(25, 0, 25, 0) : EdgeInsets.fromLTRB(5, 0, 5, 0),
         
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            Text(title,
            style: TextStyle(
              color: isSelected 
              ? Colors.black : Colors.grey
            ),)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutral,
      bottomNavigationBar: Container(
        height: 85,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            pages.length,
            (index) => navItem(
              pages[index]["icon"] as IconData,
              index,
              pages[index]["title"] as String,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('What are you craving today', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10,),
                    
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white, width: 0.5),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.secondary.withValues(alpha: 0.1),
                            offset: Offset(1, 1),
                            blurRadius: 15,
                            spreadRadius: 1
                          )
                        ]
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search for dishes or restaurants',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.search),
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.settings),
                          ),
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          fillColor: AppColors.neutral,
                          hoverColor: AppColors.neutral
                          
                        ),
                        
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          'Categories',
                          style: TextStyle(
                            fontSize: 22
                          ),
                        ),
                        Spacer(),
                        Text(
                          'VIEW ALL',
                          style: TextStyle(
                            fontSize: 22,
                            color: AppColors.primary
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 110,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        separatorBuilder: (context, index) => SizedBox(width: 16,),
                        itemBuilder: (context, index) => CategoryItem(
                          icon: categories[index]["icon"] as IconData,
                          title: categories[index]["title"] as String,
                      
                        ),
                      ),
                    ),
                    Container(
                      
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          AppColors.primary,
                          Colors.white
                        ],
                        
                      ),
                      
                      borderRadius: BorderRadius.circular(20)
                      ),
                      
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '50% Off',
                              style: TextStyle(
                                fontSize: 42,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            ),
                            Text(
                              'Your first order',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              
                              
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                                
                              ),
                              child: Text(
                                'Claim Now',
                                style: TextStyle(
                                  fontSize: 16
                                ),
                              ),
                                
                            )
                          ],
                          ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          'Popular Near You',
                          style: TextStyle(
                            fontSize: 22
                          ),
                        ),
                        Spacer(),
                        Text(
                          'SEE MORE',
                          style: TextStyle(
                            fontSize: 22,
                            color: AppColors.primary
                          ),
                        )
                      ],
                    ),
        
                    SizedBox(height: 15,),
        
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          PopularItem(
                            name: 'Pepperoni Pizza',
                            price: '\$12.99',
                            image: 'https://images.getrecipekit.com/20251209014056-pepperoni-20pizza_002-20copy.jpg?class=16x9',
                          ),
                          SizedBox(width: 16,),
                          PopularItem(
                            name: 'Double Wagyu Burger',
                            price: '\$15.50',
                            image: 'https://www.thefoodscout.net/wp-content/uploads/2017/03/IMG_6898.jpg',
                          ),
                        ],
                      )
                    ),
        
                    SizedBox(height: 15,),
        
                    Row(
                      children: [
                        Text(
                          'Featured Restaurants',
                          style: TextStyle(
                            fontSize: 22
                          ),
                        ),
                        Spacer(),
                        Text(
                          'ALL PLACES',
                          style: TextStyle(
                            fontSize: 22,
                            color: AppColors.primary
                          ),
                        )
                      ],
                    ),
        
                    SizedBox(height: 15,),

                    shopList(
                      'https://scontent.fcgp3-1.fna.fbcdn.net/v/t39.30808-6/321580225_6096486307037835_8855659788200801705_n.jpg?stp=dst-jpg_tt6&cstp=mx951x960&ctp=s951x960&_nc_cat=104&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=Kjwkst3DWH8Q7kNvwFpbnNd&_nc_oc=AdpLJK-K9NxxyISGA4wh-X6KBnRv43ZJP4iIddDS02APnMoBOkmHR5iCsyNJ2ORfivQ&_nc_zt=23&_nc_ht=scontent.fcgp3-1.fna&_nc_gid=471nYqdWqTn5jiMiTn4G_g&_nc_ss=7b2a8&oh=00_Af9XyDfY9xlr6iCmC8TKaf22Gld9ePV9Dhkkvf_n5XgdKQ&oe=6A3205A2',
                      'The Burger House',
                      'American . Burges . Grill',
                      '20-30 min'
                    ),

                    SizedBox(height: 15,),

                    shopList(
                      'https://scontent.fcgp3-1.fna.fbcdn.net/v/t39.30808-6/244394029_103397788787563_4643205384595355983_n.jpg?stp=dst-jpg_tt6&cstp=mx1164x1164&ctp=s1164x1164&_nc_cat=100&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=UsHBwmEAbkwQ7kNvwHuN_JF&_nc_oc=AdoWBiBYLHqAkWlJjWLrSOjD9ToD4QgtNBvGPIggsHn3yPABolwu8d-eY1bz_RjUR64&_nc_zt=23&_nc_ht=scontent.fcgp3-1.fna&_nc_gid=nYnrtHcwHkG_7ntXYYl1VA&_nc_ss=7b2a8&oh=00_Af_85MFMF3OLMRJA_IP3TJf82GsNBepC9oOUpBiUhwqxeA&oe=6A31D7C8',
                      'Sakura Sushi Bar', 
                      'Japanese . Sushi . Ramen', 
                      '35-45 min'
                    ),

                    SizedBox(height: 15,),
        
                    
                  ],
                ),
              ),
            ),
        
            CustomAppBar()
            
          ],
        ),
      ),
    );
  }
} 

Widget shopList(String image, String name, String categories, String time) {

  

  return Container(
    height: 120,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(10),
            child: Image.network(
              image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name, style: TextStyle(fontSize: 18)),
                Text(
                  categories,
                  style: TextStyle(fontSize: 16, color: AppColors.secondary),
                ),
                Text(
                  time,
                  style: TextStyle(fontSize: 14, color: AppColors.secondary),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
