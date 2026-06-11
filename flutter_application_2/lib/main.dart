

import 'package:flutter/material.dart';
import 'package:flutter_application_2/const_color.dart';

void main() {
  runApp(FitnessApp());
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        useMaterial3: true,

        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),

          titleLarge: TextStyle(color: Colors.white),
          titleMedium: TextStyle(color: Colors.white),
          titleSmall: TextStyle(color: Colors.white),
  ),
),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  int selectedIndex =0;


  Widget navItem(IconData icon, int index, String name) {
    bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },

      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
        decoration: BoxDecoration(

          color: isSelected
              ? AppColors.primary
              : Colors.transparent,

          borderRadius: BorderRadius.circular(40),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isSelected
                  ? Colors.black 
                  : Colors.grey,
              size: isSelected
              ? 24 : 20,
                  
            ),
            Text(name, style: TextStyle(
              color: isSelected
                  ? Colors.black
                  : Colors.grey,
              fontSize: isSelected
              ? 12 : 10
            ),)
          ],
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.netral,
        child: Icon(
          Icons.add
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black12,),],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            navItem(
              Icons.dashboard, 0,'Dashboard',
            ),
            navItem(Icons.local_activity, 1, 'Activity'),
            navItem(Icons.food_bank_sharp, 2, 'Nutrition'),
            navItem(Icons.settings, 3, 'Settings')
          ],
        ),
      ),
      backgroundColor: AppColors.netral,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                
                Row(
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: AppColors.primary,

                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2023/04/28/23/32/ai-generated-7957457_1280.png',
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text('Welcome, Hasan', style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                    Spacer(),
                    Icon(Icons.notification_add, color: Colors.white),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.secondary,
                  ),
                  
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                height: 200,
                                width: 200,
                                child: CircularProgressIndicator(
                                  value: 0.85,
                                  color: AppColors.primary,
                                  strokeWidth: 20,
                                  
                                  strokeCap: StrokeCap.round,
                                ),
                              ),
                              Column(
                                children: [
                                  Text('8,432', style: TextStyle(
                                color: Colors.white,
                                fontSize: 54,
                                fontWeight: FontWeight.bold
                              ),),
                                  SizedBox(height: 2,),
                                  Text('STEPS TODAY', style: TextStyle(
                                color: Colors.white
                              ),)
                                ],
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('84%', style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                            ),
                            ), 
                                Text('of 10,000 goals', style: TextStyle(
                              color: Colors.white
                            ),), ]),
                            Spacer(),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white.withValues(alpha: 0.2),
                                foregroundColor: Colors.white

                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Icon(Icons.storm),
                                  Text('On Fire!')
                                ],
                              ),
                              
                              
                              
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.secondary,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.fire_extinguisher,
                                  size: 32,
                                  color: Colors.red,
                                ),
                                Spacer(),
                                Text('CALORIES',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
                                ),),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: [
                                    Text(
                                      '450',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 44,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'kcal',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 6,),
                                LinearProgressIndicator(
                                  value: 0.4,
                                  minHeight: 5,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.secondary,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.water_drop, 
                                  size: 32,
                                  color: Colors.red,
                                ),
                                Spacer(),
                                Text('HYDRATION',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
                                ),),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: [
                                    Text('1.2',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 44,
                                      ),),
                                    Text('L',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                Text('Goal: 2.5L',style: TextStyle(
                                  fontSize: 10
                                ),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.secondary,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Weekly Activity',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                            Spacer(),
                            Text(
                              'Details',
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 18
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('M'),
                            Text('T'),
                            Text('W'),
                            Text('T',style: TextStyle(
                              color: AppColors.primary
                            ),),
                            Text('F'),
                            Text('S'),
                            Text('S'),
                            
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 200,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://www.femalefirst.co.uk/image-library/land/1000/b/brave-feature-poster.jpg', 
                      ), 
                      fit: BoxFit.fitWidth
                    ),
                    
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            'RECOMMANDED',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 10
                            ),
                          ),
                        ),
                        Text(
                          'High-Intensity HIIT',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          '25 mins * 320 kcal'
                        )
                    
                      ],
                    ),
                  ),
                )               
              ],
            ),
          ),
        ),
      ),
    );
  }
}




