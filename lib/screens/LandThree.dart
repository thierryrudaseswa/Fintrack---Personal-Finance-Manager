import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:themeflutter/components/Transactions.dart';
import 'package:themeflutter/theme/MyAppColors.dart';
import 'package:themeflutter/components/ButtonCo.dart';

class LandThree extends StatefulWidget {
  const LandThree({super.key});

  @override
  State<LandThree> createState() => _LandThreeState();
}

class _LandThreeState extends State<LandThree> {
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
                          Icons.arrow_back_sharp,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                    ),
                    const SizedBox(width: 90),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "My Cards",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
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
                      Icons.add,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Image.asset(
            'assets/mastercard.jpg',
            width: MediaQuery.of(context).size.width * 1.4,
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
            ),
          ),
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
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "Monthly Spending Limit",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                  color: Color(0xFF1E1E2D),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text("AMount : 900 USD"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LinearPercentIndicator(
                      animation: true,
                      animationDuration: 1000,
                      lineHeight: 20,
                      percent: 0.7,
                      progressColor: Colors.deepPurple,
                      backgroundColor: Colors.deepPurple.shade200,
                      barRadius: Radius.circular(20),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("0"), Text("200"), Text("900")],
                      ),
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

  // Add more transactions as needed
];
