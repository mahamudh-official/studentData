
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:practice_5/add_product_page.dart';




void main () {
  runApp(myApp());
}

List<Map<String, dynamic>> productList = [];

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductListPage()
    );
  }
}

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {

  bool productListInProgress = false;

  

  Future <void> getProducts () async {
    productListInProgress = true;

    productList.clear();

    setState(() {
      
    });

    final String url = 'http://10.0.2.2:8000/products/';
    final response = await http.get(Uri.parse(url));
    
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      for (Map<String, dynamic> i in data) {
        productList.add(i);
      }
      
    }
    
    productListInProgress=false;

    setState(() {});

  }

  @override
  void initState() {
    super.initState();
    getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Product CRUD'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => AddProductPage() ));
          },
          child: Icon(Icons.add),
        ),

        body: RefreshIndicator(
          onRefresh: getProducts,
          child: Visibility(
            visible: !productListInProgress,
            replacement: Center(child: CircularProgressIndicator(),),
            child: HomeScreen()
          ),
        )
      );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    
  });

  


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemCount: productList.length,
          itemBuilder: (context, index) {
            return Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(productList[index]['title'], style: TextStyle(
                          fontSize: 20
                        ),),
                        Text(productList[index]['description'],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Stock ${productList[index]['stock'].toString()}'),
                            
                            Text('Price: ${productList[index]['price'].toString()}')
                          ],
                        )
                      ],
                    ),
                  ),
                  
                  SizedBox(
                    child: Row(
                      
                      children: [
                        Icon(Icons.edit),
                        Icon(Icons.delete)
                      ],
                    ),
                  )
                ],
              ),
            );
          }
        );
  }
}

