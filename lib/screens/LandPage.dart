import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:themeflutter/components/Transactions.dart';
import 'package:themeflutter/theme/MyAppColors.dart';
import 'package:themeflutter/components/ButtonCo.dart';

class LandPage extends StatefulWidget {
  const LandPage({super.key});

  @override
  State<LandPage> createState() => _LandPageState();
}

class _LandPageState extends State<LandPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'assets/Rwaka.png',
                        width: 60,
                        height: 60,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome back",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Rudaseswa Thierry",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? MyAppColors.darkGray
                        : MyAppColors.lightGray.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: GestureDetector(
                    onTap: () {
                      // Add your search functionality here
                    },
                    child: Icon(
                      Icons.search,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            height: 200,
            width: 200, // Set a fixed height
            // color: Color(0xFF707070), // Set the background color
            child: Center(
              child: Image.asset(
                'assets/card2.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      UpwardArrowButton(
                        icon: Icons.arrow_upward,
                        height: 50,
                      ),
                      const SizedBox(height: 10),
                      const Text("Send"),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      UpwardArrowButton(
                        icon: Icons.arrow_downward,
                        height: 50,
                      ),
                      const SizedBox(height: 10),
                      const Text("Receive"),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      UpwardArrowButton(
                        icon: Icons.money_off_rounded,
                        height: 50,
                      ),
                      const SizedBox(height: 10),
                      const Text("Loan"),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      UpwardArrowButton(
                        icon: Icons.arrow_outward_sharp,
                        height: 50,
                      ),
                      const SizedBox(height: 10),
                      const Text("TopUp"),
                    ],
                  ),
                  const SizedBox(width: 50),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Transaction",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20),
                ),
                const Text(
                  "See All",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: transactions.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TransactionRow(
                  icon: transactions[index].icon,
                  title: transactions[index].title,
                  subtitle: transactions[index].subtitle,
                  amount: transactions[index].amount,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class Transaction {
  final IconData icon;
  final String title;
  final String subtitle;
  final String amount;

  Transaction({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.amount,
  });
}

final transactions = [
  Transaction(
      icon: Icons.apple,
      title: "Apple Store",
      subtitle: "Entertainment",
      amount: "800"),
  Transaction(
      icon: Icons.music_video,
      title: "Spotify",
      subtitle: "Music",
      amount: "-400"),
  Transaction(
      icon: Icons.shopping_cart,
      title: "Grocery Store",
      subtitle: "Food",
      amount: "-400"),
  Transaction(
      icon: Icons.shopping_cart,
      title: "Grocery Store",
      subtitle: "Food",
      amount: "-400"),
  // Add more transactions as needed
];
