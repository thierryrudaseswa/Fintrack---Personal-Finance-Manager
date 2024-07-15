import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:themeflutter/components/ProgressIndicator.dart';
import 'package:themeflutter/components/Transactions.dart';
import 'package:themeflutter/components/linearProgress.dart';
import 'package:themeflutter/theme/MyAppColors.dart';
import '../components/Graph.dart';

class LandTwo extends StatefulWidget {
  const LandTwo({Key? key}) : super(key: key);

  @override
  State<LandTwo> createState() => _LandTwoState();
}

class _LandTwoState extends State<LandTwo> {
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
                    const SizedBox(width: 70),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Statistics",
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
                      Icons.notification_add,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          LineChartSample2(),
          const SizedBox(height: 20),
          ExampleStepProgressIndicator(),
          const SizedBox(height: 30),
          LinearPercentIndicator(
            animation: true,
            animationDuration: 1000,
            lineHeight: 40,
            percent: 0.7,
            progressColor: Colors.deepPurple,
            backgroundColor: Colors.deepPurple.shade200,
            barRadius:
                Radius.circular(20), // Add this line to set the border radius
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
                      // Your existing code
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      // Your existing code
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      // Your existing code
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      // Your existing code
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
