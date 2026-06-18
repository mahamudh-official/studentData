import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {

  bool addInProgress = false;

/*
  {
    "title": "iPhone 15 Pro",
    "description": "Apple flagship smartphone",
    "price": 1299.99,
    "stock": 25
  }
*/

  

  Future<void> addProduct() async {

    addInProgress= true; 
    setState(() {});   

    Map<String, dynamic> inputData = {
      "title": _titleTEcontroller.text.trim(),
      "description": _descriptionTEcontroller.text.trim(),
      "price": double.parse(_priceTEcontroller.text.trim()),
      "stock": int.parse(_stockTEcontroller.text.trim())
    };

    final String url = 'http://10.0.2.2:8000/products/';
    final response = await http.post(
      Uri.parse(url),
      headers: {'content-type': 'application/json'},
      body: jsonEncode(inputData),
    );
    if (response.statusCode == 200) {
      _titleTEcontroller.clear();
      _descriptionTEcontroller.clear();
      _priceTEcontroller.clear();
      _stockTEcontroller.clear();          
    }
    addInProgress = false;
    setState(() {});

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'New Product added successfully.'
        )
      )
    );
    Navigator.pop(context);

    
  }
  @override
  void dispose() {
    _titleTEcontroller.dispose();
    _descriptionTEcontroller.dispose();
    _priceTEcontroller.dispose();
    _stockTEcontroller.dispose();

    super.dispose();
  }
  

  final TextEditingController _titleTEcontroller = TextEditingController();
  final TextEditingController _descriptionTEcontroller = TextEditingController();
  final TextEditingController _priceTEcontroller = TextEditingController();
  final TextEditingController _stockTEcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text('Add product'),
                SizedBox(height: 16,),
                MyTextField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter title';
                    }
                    return null;
                  },
                  labelText: 'Title',
                  controller: _titleTEcontroller,
                  keyBoardType: TextInputType.text, 
                ),
                MyTextField(
                  labelText: 'Description',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter description';
                    }
                    return null;
                  },
                  controller: _descriptionTEcontroller,
                  keyBoardType: TextInputType.text, 
                ),
                MyTextField(
                  labelText: 'Price',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter price';
                    }
                    return null;
                  },
                  controller: _priceTEcontroller,
                  keyBoardType: TextInputType.number, 
                ),
                MyTextField(
                  labelText: 'Stock',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter stock';
                    }
                    return null;
                  },
                  controller: _stockTEcontroller,
                  keyBoardType: TextInputType.number,
                ),
                if (addInProgress==true) 
                  Center(child: CircularProgressIndicator(),)
                else
                GestureDetector(
                  onTap: () {
                    if(_formKey.currentState!.validate()) {
                      addProduct(); 
                    }                                
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(16)
                      ),                  
                      height: 50,
                      width: double.maxFinite,
                      child: Center(
                        child: Text(
                          'Add Product', 
                          style: TextStyle(
                            color: Colors.white
                          ),
                        )
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.labelText,
    required this.controller,
    required this.keyBoardType,
  
    this.validator
    
  });

  final TextEditingController controller;
  final String labelText;
  final TextInputType keyBoardType;

  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        SizedBox(
          child: TextFormField(
            validator: validator,
            keyboardType: keyBoardType,
            controller: controller,
            decoration: InputDecoration(
              label: Text(labelText),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 10
                )
              )
            ),
          ),
        ),
        SizedBox(height: 16,)
      ],
    );
  }
}