import 'package:flutter/material.dart';
import 'package:practice_8/constant/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.primaryColor,
        title: const Text('DashBoard'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.notifications_outlined),
          SizedBox(width: 16),
          CircleAvatar(radius: 15, backgroundColor: AppColors.primaryColor),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    StaticsCard(
                      title: 'TOTAL USERS',
                      description: 'Growth over last 30 days',
                      growth: '12,450',
                      parcentage: '5%',
                    ),
                    const SizedBox(width: 16),
                    StaticsCard(
                      title: 'MONTHLY REVENUE',
                      description: 'Total billing volume',
                      growth: '\$45,000',
                      parcentage: '12%',
                    ),
                    const SizedBox(width: 16),
                    StaticsCard(
                      title: 'ACTIVE SESSIONS',
                      description: 'Users currently online',
                      growth: '1,200',
                      parcentage: 'Live',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 300,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Color(0xFFF2F3F8),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.black.withValues(alpha: .2),
                    width: 1,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(child: CustomPaint(painter: GridPainter())),
                    Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.black.withValues(alpha: .2),
                            width: 1,
                          ),
                        ),
                        child: Text('Interative Data Stream Active'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(16),
                height: 300,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.black.withValues(alpha: .2),
                    width: 1,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'User Statistics',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Text('New Users'),
                        const Spacer(),
                        Text(
                          '65%',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    LinearProgressIndicator(
                      minHeight: 8,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      value: 0.65,
                      backgroundColor: Colors.grey.withValues(alpha: 0.2),
                      valueColor: AlwaysStoppedAnimation(
                        AppColors.primaryColor,
                      ),
                    ),
                    Row(
                      children: [
                        Text('Returning Users'),
                        const Spacer(),
                        Text(
                          '35%',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    LinearProgressIndicator(
                      minHeight: 8,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      value: 0.35,
                      backgroundColor: Colors.grey.withValues(alpha: 0.2),
                      valueColor: AlwaysStoppedAnimation(
                        AppColors.secondaryColor,
                      ),
                    ),

                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '8.4k',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'New This Week',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '4.2k',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Active Now',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.black.withValues(alpha: .2),
                    width: 1,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Text(
                            'Recent Activity',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'View All',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    ActivityCard(
                      title: 'New user registered:',
                      description: 'Alex Johnson joined the platform.',
                      time: '2 minutes ago',
                      department: 'System',
                      icon: Icons.person_add_alt_outlined,
                      iconColor: AppColors.secondaryColor,
                      iconbgColor: AppColors.secondaryColor,
                    ),
                    Divider(),
                    ActivityCard(
                      title: 'System update completed:',
                      description: 'Version 2.4.0 deployed successfully.',
                      time: '45 minutes ago',
                      department: 'DevOps',
                      icon: Icons.update_outlined,
                      iconColor: AppColors.primaryColor,
                      iconbgColor: AppColors.primaryColor,
                    ),
                    Divider(),
                    ActivityCard(
                      title: 'Revenue milestone reached:',
                      description: 'Monthly goal of \$40k exceeded.',
                      time: '3 hours ago',
                      department: 'Growth',
                      icon: Icons.rocket_outlined,
                      iconColor: AppColors.backgroundColor,
                      iconbgColor: AppColors.backgroundColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  const ActivityCard({
    super.key,
    required this.title,
    required this.description,
    required this.time,
    required this.department,
    required this.icon,
    required this.iconColor,
    required this.iconbgColor,
  });

  final String title, description, time, department;
  final IconData icon;
  final Color iconColor, iconbgColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: iconbgColor.withValues(alpha: 0.4),
            child: Icon(icon, color: iconColor, size: 28),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(text: ' '),
                      TextSpan(
                        text: description,
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '$time • $department',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// grid painter
class GridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey.withValues(alpha: 0.2)
      ..strokeWidth = 1;

    const double spacing = 50;

    for (double x = 0; x < size.width; x += spacing) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }
    for (double y = 0; y < size.height; y += (spacing + 10)) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class StaticsCard extends StatelessWidget {
  const StaticsCard({
    super.key,
    required this.title,
    required this.description,
    required this.growth,
    required this.parcentage,
  });

  final String title, description, growth, parcentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 270,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black.withValues(alpha: .2), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .05),
            blurRadius: 8,
            offset: const Offset(0, 4),
            spreadRadius: 3,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor.withValues(alpha: 0.4),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 2,
                      horizontal: 8,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_upward, size: 12),
                        const SizedBox(width: 4),
                        Text(parcentage, style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              growth,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Text(description, style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
