import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:themeflutter/components/Transactions.dart';
import 'package:themeflutter/theme/MyAppColors.dart';
import 'package:themeflutter/components/ButtonCo.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
                          // Add your back navigation functionality here
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
                          "Settings",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
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
                      // Add your add functionality here
                    },
                    child: Icon(
                      Icons.settings,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              "General",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Language",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "English",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 20),
                    Icon(Icons.arrow_right),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey.withOpacity(0.5),
            indent: 12,
            endIndent: 12,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Profile",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.arrow_right),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey.withOpacity(0.5),
            indent: 12,
            endIndent: 12,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Contact Us",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.arrow_right),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey.withOpacity(0.5),
            indent: 12,
            endIndent: 12,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Security",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Change PasswWord")
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.arrow_right),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey.withOpacity(0.5),
            indent: 12,
            endIndent: 12,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Privacy Policy",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.arrow_right),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey.withOpacity(0.5),
            indent: 12,
            endIndent: 12,
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text("Choose what data you share with us"),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "Biometric",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
