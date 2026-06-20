import 'package:flutter/material.dart';
import 'package:practice_6/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BangkingDashboard());
  }
}

class BangkingDashboard extends StatefulWidget {
  const BangkingDashboard({super.key});

  @override
  State<BangkingDashboard> createState() => _BangkingDashboardState();
}

class _BangkingDashboardState extends State<BangkingDashboard> {
  final List<Map<String, String>> contacts = [
    {'name': 'Alice', 'initials': 'AL'},
    {'name': 'Bob', 'initials': 'BO'},
    {'name': 'Charlie', 'initials': 'CH'},
    {'name': 'Diana', 'initials': 'DI'},
    {'name': 'Eve', 'initials': 'EV'},
  ];

  int _selectedItem = 0;

  Widget navBar(int index, IconData icon, String label) {
    bool isSelected = _selectedItem == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItem = index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),

        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: isSelected ? AppColors.secondaryColor : Colors.transparent,
          border: Border.all(
            color: isSelected ? AppColors.secondaryColor : Colors.transparent,
            width: 1,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.white : AppColors.neutralColor,
              size: 22,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.white : AppColors.neutralColor,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: AppColors.neutralColor.withValues(alpha: 0.1),
              width: 1,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            navBar(0, Icons.home_outlined, 'Home'),
            navBar(1, Icons.payments_outlined, 'Payments'),
            navBar(2, Icons.payment_outlined, 'Cards'),
            navBar(3, Icons.person_outlined, 'Profile'),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            // Main Content
            SingleChildScrollView(
              padding: const EdgeInsets.only(top: 70),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      // Total Balance Card
                      Container(
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: AppColors.primaryColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'TOTAL BALANCE',
                                style: TextStyle(
                                  color: Colors.white.withValues(alpha: 0.7),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                '\$12,345.67',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.neutralColor
                                          .withValues(alpha: 0.3),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        side: BorderSide(
                                          color: Colors.white.withValues(
                                            alpha: 0.5,
                                          ),
                                          width: 0.5,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        const Text(
                                          'Account Details',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                    backgroundColor: AppColors.tertiaryColor
                                        .withValues(alpha: 0.2),
                                    radius: 20,
                                    child: const Icon(
                                      Icons.trending_up,
                                      color: AppColors.tertiaryColor,
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),

                      // Quick Transfer Section
                      Row(
                        children: [
                          Text(
                            'Quick Transfer',
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'View All',
                            style: TextStyle(
                              color: AppColors.secondaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // Quick Transfer List
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: AppColors.secondaryColor.withValues(
                                      alpha: 0.5,
                                    ),
                                    width: 1,
                                  ),
                                ),
                                child: CircleAvatar(
                                  backgroundColor: AppColors.secondaryColor
                                      .withValues(alpha: 0.1),
                                  radius: 28,
                                  child: const Icon(
                                    Icons.add,
                                    color: AppColors.secondaryColor,
                                    size: 28,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'New',
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: QuickTransferList(contacts: contacts),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // My Cards Section
                      Row(
                        children: [
                          Text(
                            'My Cards',
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'Platinum tier',
                            style: TextStyle(
                              color: AppColors.primaryColor.withValues(
                                alpha: 0.7,
                              ),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // Credit Card Mockup
                      Container(
                        height: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: AppColors.primaryColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'PROTON PLATINUM',
                                    style: TextStyle(
                                      color: Colors.white.withValues(
                                        alpha: 0.7,
                                      ),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'VISA',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.contactless_outlined,
                                color: Colors.white,
                                size: 32,
                                weight: 0.5,
                              ),
                              Spacer(),
                              Text(
                                '**** **** **** 1234',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'EXP',
                                        style: TextStyle(
                                          color: Colors.white.withValues(
                                            alpha: 0.7,
                                          ),
                                          fontSize: 8,
                                        ),
                                      ),
                                      const Text(
                                        '12/28',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'CVV',
                                        style: TextStyle(
                                          color: Colors.white.withValues(
                                            alpha: 0.7,
                                          ),
                                          fontSize: 8,
                                        ),
                                      ),
                                      const Text(
                                        '***',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16),

                      // Statistics Cards
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(16),

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: AppColors.secondaryColor.withValues(
                                  alpha: 0.1,
                                ),
                              ),

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(6),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors.secondaryColor
                                              .withValues(alpha: 0.2),
                                        ),
                                        child: Icon(
                                          Icons.payments_outlined,
                                          color: AppColors.secondaryColor,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.arrow_upward,
                                        color: AppColors.tertiaryColor
                                            .withValues(alpha: 0.5),
                                        size: 16,
                                      ),
                                      Text(
                                        '12%',
                                        style: TextStyle(
                                          color: AppColors.tertiaryColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Monthly Spending',
                                    style: TextStyle(
                                      color: AppColors.neutralColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    '\$1,234.56',
                                    style: TextStyle(
                                      color: AppColors.primaryColor,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(16),

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: AppColors.secondaryColor.withValues(
                                  alpha: 0.1,
                                ),
                              ),

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(6),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors.secondaryColor
                                              .withValues(alpha: 0.2),
                                        ),
                                        child: Icon(
                                          Icons.savings_outlined,
                                          color: AppColors.tertiaryColor,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.arrow_upward,
                                        color: AppColors.tertiaryColor
                                            .withValues(alpha: 0.5),
                                        size: 16,
                                      ),
                                      Text(
                                        '4.2%',
                                        style: TextStyle(
                                          color: AppColors.tertiaryColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Savings Growth',
                                    style: TextStyle(
                                      color: AppColors.neutralColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    '\$840.50',
                                    style: TextStyle(
                                      color: AppColors.primaryColor,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),

                      // Recent Transactions
                      SizedBox(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Recent Transactions',
                                  style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  'View All',
                                  style: TextStyle(
                                    color: AppColors.secondaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            TransactionCard(
                              name: 'Starbucks',
                              amount: '12.50',
                              icon: Icons.coffee_outlined,
                            ),
                            TransactionCard(
                              name: 'Amazon',
                              amount: '45.67',
                              icon: Icons.shopping_cart_outlined,
                            ),
                            TransactionCard(
                              name: 'Spotify',
                              amount: '9.99',
                              icon: Icons.music_note_outlined,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Custom AppBar
            Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                border: BoxBorder.fromLTRB(
                  bottom: BorderSide(
                    color: AppColors.neutralColor.withValues(alpha: 0.2),
                    width: 1,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.neutralColor.withValues(
                        alpha: 0.5,
                      ),
                      radius: 20,
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      'Hello, Hasan',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Icon(Icons.notifications, color: AppColors.primaryColor),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuickTransferList extends StatelessWidget {
  final List contacts;

  QuickTransferList({required this.contacts});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: contacts.length,
        separatorBuilder: (context, index) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.secondaryColor.withValues(alpha: 0.5),
                    width: 1,
                  ),
                ),
                child: CircleAvatar(
                  backgroundColor: AppColors.secondaryColor.withValues(
                    alpha: 0.1,
                  ),
                  radius: 28,
                  child: Text(
                    contacts[index]['initials']!,
                    style: TextStyle(
                      color: AppColors.secondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                contacts[index]['name']!,
                style: TextStyle(color: AppColors.primaryColor, fontSize: 12),
              ),
            ],
          );
        },
      ),
    );
  }
}

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    super.key,
    required this.name,
    required this.amount,
    required this.icon,
  });

  final String name, amount;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: AppColors.neutralColor.withValues(alpha: 0.1),
                blurRadius: 10,
                offset: const Offset(0, 5),
                spreadRadius: 5,
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.secondaryColor.withValues(alpha: 0.1),
                ),
                child: Icon(icon, color: AppColors.primaryColor),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Aug 12, 2024',
                    style: TextStyle(
                      color: AppColors.neutralColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                '-\$${amount}',
                style: TextStyle(color: AppColors.primaryColor, fontSize: 16),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
