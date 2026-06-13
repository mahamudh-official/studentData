import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice_4/Const/app_colors.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LuxeMart(),
    );
  }
}

class LuxeMart extends StatefulWidget {
  const LuxeMart({super.key});

  @override
  State<LuxeMart> createState() => _LuxeMartState();
}

class _LuxeMartState extends State<LuxeMart> {

  final categoryList = [

    {
      "icon": Icons.checkroom_outlined,
      "title": "Apparel"
    },
    {
      "icon": Icons.desktop_windows_outlined,
      "title": "Tech"
    },
    {
      "icon": Icons.chair_alt_outlined,
      "title": "Home"
    },
    {
      "icon": Icons.face_outlined,
      "title": "Beauty"
    },
    {
      "icon": Icons.watch_outlined,
      "title": "Accessories"
    },   

  ];

  final productList = [
    
  {
    "id": "1",
    "image": "https://kolzsticks.github.io/Free-Ecommerce-Products-Api/main/images/products/moisturizer.jpg",
    "name": "Hydrating Facial Moisturizer",
    "rating": {
      "stars": 4.7,
      "count": 120
    },
    "priceCents": 2000,
    "category": "Beauty & Personal Care",
    "subCategory": "Skincare",
    "keywords": [
      "moisturizer",
      "hydration",
      "skincare",
      "beauty"
    ],
    "description": "This Hydrating Facial Moisturizer is expertly formulated to deeply nourish and hydrate your skin, providing lasting moisture and a smooth, radiant complexion. Ideal for daily use."
  },
  {
    "id": "2",
    "image": "https://kolzsticks.github.io/Free-Ecommerce-Products-Api/main/images/products/shampoo.jpg",
    "name": "Anti-Dandruff Shampoo",
    "rating": {
      "stars": 4.5,
      "count": 85
    },
    "priceCents": 1500,
    "category": "Beauty & Personal Care",
    "subCategory": "Hair Care",
    "keywords": [
      "shampoo",
      "hair care",
      "anti-dandruff",
      "cleanse"
    ],
    "description": "Our Anti-Dandruff Shampoo effectively combats flakes and itchiness, promoting a healthy scalp. Infused with soothing ingredients, it cleanses your hair without stripping natural oils."
  },
  {
    "id": "3",
    "image": "https://kolzsticks.github.io/Free-Ecommerce-Products-Api/main/images/products/foundation.jpg",
    "name": "Matte Liquid Foundation",
    "rating": {
      "stars": 4.6,
      "count": 98
    },
    "priceCents": 2200,
    "category": "Beauty & Personal Care",
    "subCategory": "Makeup",
    "keywords": [
      "foundation",
      "makeup",
      "beauty",
      "matte"
    ],
    "description": "This Matte Liquid Foundation offers a flawless finish with long-lasting wear. Lightweight and breathable, it blends seamlessly into the skin, providing even coverage and a natural look."
  },
  {
    "id": "4",
    "image": "https://kolzsticks.github.io/Free-Ecommerce-Products-Api/main/images/products/perfume.jpg",
    "name": "Eau de Parfum - Floral Scent",
    "rating": {
      "stars": 4.8,
      "count": 160
    },
    "priceCents": 3500,
    "category": "Beauty & Personal Care",
    "subCategory": "Fragrances",
    "keywords": [
      "perfume",
      "fragrance",
      "scent",
      "floral"
    ],
    "description": "Experience the essence of blooming florals with our Eau de Parfum. This captivating scent envelops you in elegance, making it perfect for any occasion, leaving a lasting impression."
  },
  ];
  
  


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
                          Container(
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
                            Icon(Icons.grid_view),
                            Icon(Icons.list_alt)
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: productList.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                            childAspectRatio: 0.75,
                          ), 
                          itemBuilder: (context, index) {
                            return ProductCard(
                              name: productList[index]['name'] as String,
                          category: productList[index]['category'] as String,
                          rating: (productList[index]['rating']as Map<String, dynamic>) ['stars'].toString(),
                          imageUrl: productList[index]['image'] as String, 
                          price: productList[index]['priceCents'].toString(),
                        );
                          }
                        )
                      ],
                      
                    ),
                  )
                ],
              ),
            ),
        
            Container(
              
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
            )
          ],
        ),
      ),
    );
  }
}



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







class ProductCard extends StatelessWidget {
  const ProductCard({
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