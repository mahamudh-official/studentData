import 'package:flutter/material.dart';
import 'package:flutter_practice_1/const_colors.dart';
import 'package:flutter_practice_1/main.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: DashBoard());
  }
}

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        
            children: [
              Row(
                children: [
                  CircleAvatar(radius: 24, backgroundColor: Colors.amber),
                  SizedBox(width: 12,),
                  Text('Good Morning, Hasan', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),),
                  Spacer(),
                  Icon(Icons.notifications),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: AppColors.primary,
                ),
                width: double.maxFinite,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'FALL SEMESTER 2026', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withValues(alpha: 0.6) 
                        ),
                      ),
                      Text('You\'re on truck to graduate with honors!', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Colors.white),),
                      Text('3 assignments due this week. Stay \nfocused, Hasan.', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withValues(alpha: 0.6) 
                        ),
                      ),
                      Buttons(title: 'View Schedule', bgcolor: Colors.white, fgcolor: AppColors.primary, icon: Icons.grid_view,)
                      // ElevatedButton(onPressed: () {}, child: Text('View Schedule'))
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
                                  Icon(
                                    Icons.calendar_month,
                                    size: 35,
                                    color: AppColors.primary,
                                  ),
                                  Spacer(),
                                  Text(
                                    'On Track',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.tartiary,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text('ATTENDENCE', style: TextStyle(fontSize: 14)),
                              SizedBox(height: 4),
                              Text(
                                '85%',
                                style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primary,
                                ),
                              ),
                              SizedBox(height: 10),
                              LinearProgressIndicator(
                                value: 0.85,
                                color: Colors.green,
                              ),
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
                                  Icon(
                                    Icons.star,
                                    size: 35,
                                    color: AppColors.primary,
                                  ),
                                  Spacer(),
                                  Text(
                                    'Top 10%',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text('CGPA', style: TextStyle(fontSize: 14)),
                              SizedBox(height: 4),
                              Text(
                                '3.75',
                                style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primary,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Last Updated: Semester 5',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('Upcoming Assignments', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          ),
                        ), 
                  Spacer(), 
                  Text('See All')],
              ),
              SizedBox(height: 10,),
              detailBar(
                title: 'Algorithm Complexity ...',
                description: 'Telecommunication 94',
                icon: Icons.code,
                date: 'Today',
                time: '11:59 pm',
              ),
              SizedBox(height: 10,),
              detailBar(
                title: 'Linear Regression Lab',
                description: 'Statistics for Data Science',
                icon: Icons.code,
                date: 'Nov 28',
                time: 'In 3 days',
              ),
              SizedBox(height: 10,),
              Text('Exam Schedule', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          ),),
              SizedBox(height: 10,),
              Container(
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
                      Icon(Icons.calendar_month, color: AppColors.primary),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Data Structure',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Hall B-12 09:00 AM',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
    required this.date,
    required this.time,
  });

  final String title;
  final String description;
  final IconData icon;
  final String date;
  final String time;

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
                Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 2),
                Text(description, style: TextStyle(fontSize: 12)),
              ],
            ),
            Spacer(),
            Column(
              children: [
                Text(date, style: TextStyle(fontSize: 12)),
                SizedBox(height: 2),
                Text(time, style: TextStyle(fontSize: 12)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
