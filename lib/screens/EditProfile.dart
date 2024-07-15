import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:themeflutter/components/Transactions.dart';
import 'package:themeflutter/theme/MyAppColors.dart';
import 'package:themeflutter/components/ButtonCo.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
                          "Edit ",
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
                      Icons.person,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'assets/Rwaka.png',
                          width: 120,
                          height: 120,
                        ),
                      ),
                      Column(
                        children: [
                          Text("Rudaseswa"),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Mobile Developer")
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.account_balance),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Personal Information",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
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
                Row(
                  children: [
                    Icon(Icons.payment_outlined),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Payments Preference",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.card_giftcard),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Banks and cards",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : Colors.black,
                          ),
                        ),
                      ],
                    ),
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
                Row(
                  children: [
                    Icon(Icons.notification_add),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Notifications",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.message),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Message Center",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : Colors.black,
                          ),
                        ),
                      ],
                    ),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_city),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Address",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : Colors.black,
                          ),
                        ),
                      ],
                    ),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.settings),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Setting",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : Colors.black,
                          ),
                        ),
                      ],
                    ),
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
        ],
      ),
    );
  }
}
