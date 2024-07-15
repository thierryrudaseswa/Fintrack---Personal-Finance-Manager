import 'package:flutter/material.dart';

class TransactionRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String amount;

  const TransactionRow({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.lightGreen),
                child: Icon(icon),
              ),
              const SizedBox(
                width: 28,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(subtitle),
                ],
              ),
            ],
          ),
          Text(amount),
        ],
      ),
    );
  }
}
