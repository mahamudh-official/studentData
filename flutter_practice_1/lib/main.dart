
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: student(),
    );
  }
}

class AppColors {
  static const Color primary = Color(0xFF3F51B5);
  static const Color secondary = Color(0xFFE8EAF6);
  static const Color tartiary = Color(0xFF34A853);
  static const Color neutral = Color(0xFFFBFCFF);
}

class student extends StatelessWidget {
  const student({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Profile'),
        leading: Icon(Icons.arrow_back),
        actions: [
          Padding(padding: const EdgeInsets.all(8.0), child: Icon(Icons.info)),
        ],
        backgroundColor: AppColors.neutral,
        foregroundColor: AppColors.primary,
      ),
      body: Home(), backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 2,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cast_for_education),
            label: 'Academics',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 24, 0, 12),
                      child: CircleAvatar(
                        radius: 70,
                        foregroundColor: Colors.white60,
                        child: Icon(
                          Icons.person,
                          color: Colors.black,
                          size: 70,
                        ),
                      ),
                    ),
                    Text(
                      "Md Mahamud Hasan",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.primary.withValues(alpha: 0.3),
                        borderRadius: BorderRadius.circular(10),
                      ),

                      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                      child: Text(
                        'Roll: 784303',
                        style: TextStyle(fontSize: 12, color: AppColors.primary, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text('Telecommunication Technology'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.lightBlueAccent.shade100,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              
                              children: [
                                Icon(Icons.calendar_month,size: 35, color: AppColors.primary,),
                                Spacer(),
                                Text('On Track', style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.tartiary
                                ),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text('ATTENDENCE', style: TextStyle(
                              fontSize: 14
                            ),),
                            SizedBox(height: 4,),
                            Text('85%', style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary
                            ),),
                            SizedBox(height: 10,),
                            LinearProgressIndicator(
                              value: 0.85,
                              color: Colors.green,
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
                        borderRadius: BorderRadius.circular(36),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.lightBlueAccent.shade100,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              
                              children: [
                                Icon(Icons.star,size: 35, color: AppColors.primary),
                                Spacer(),
                                Text('Top 10%', style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primary
                                ),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text('CGPA', style: TextStyle(
                              fontSize: 14,
                              
                            ),),
                            SizedBox(height: 4,),
                            Text('3.75', style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary
                            ),),
                            SizedBox(height: 8,),
                            Text('Last Updated: Semester 5', style: TextStyle(
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
            SizedBox(height: 20),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('PERSONAL DETAILS', style: TextStyle(fontSize: 14)),
                SizedBox(height: 15),

                detailBar(
                  title: 'Email Address',
                  description: 'mahamud@gmail.com',
                  icon: Icons.message,
                ),
                SizedBox(height: 10),

                detailBar(
                  title: 'Phone Number',
                  description: '018 XXXX XXXX',
                  icon: Icons.call,
                ),
                SizedBox(height: 10),

                detailBar(
                  title: 'Home Adress',
                  description: 'Noakhali, Bangladesh',
                  icon: Icons.location_city,
                ),
                SizedBox(height: 15),
              ],
            ),
            SizedBox(
              width: double.maxFinite,
              child: buttons(title: 'Edit Profile', icon: Icons.edit, bgcolor: AppColors.primary, fgcolor: Colors.white.withValues(alpha: 0.8))),
            SizedBox(height: 10,),
            SizedBox(
              width: double.maxFinite,
              child: buttons(title: 'Logout', icon: Icons.logout, bgcolor: Colors.white, fgcolor: Colors.red,)),
          ],
        ),
      ),
    );
  }
}

class detailBar extends StatelessWidget {
  const detailBar({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  final String title;
  final String description;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(24),
      ),
      height: 80,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          children: [
            Icon(icon, color: AppColors.primary),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: 12)),
                SizedBox(height: 2),
                Text(description),
              ],
            ),
            Spacer(),
            Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}

class buttons extends StatelessWidget {
  const buttons({super.key, required this.title, required this.icon, required this.bgcolor, required this.fgcolor,});

  final String title;
  final IconData icon;
  final Color bgcolor;
  final Color fgcolor;
  

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      label: Text(title),
      icon: Icon(icon),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12)),
        backgroundColor: bgcolor,
        foregroundColor: fgcolor
      ),
    );
  }
}