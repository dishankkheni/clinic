import 'package:flutter/material.dart';

class AccountSetting extends StatelessWidget {
  final divide = Divider(
    color: Colors.grey,
    thickness: 1,
  );
  Widget makeList(String title, IconData data) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(5),
        color: Colors.purple[50],
        child: Icon(
          data,
          size: 27,
          color: Color(0xff6574CF),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      trailing: Icon(
        Icons.arrow_right,
        color: Colors.grey,
        size: 30,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[50],
      body: Stack(
        children: [
          Container(
            height: 300,
            color: Color(0xff6574CF),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 25, left: 10, right: 10, bottom: 25),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 25,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Profile Settings',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            height: 500,
            width: double.infinity,
            margin: EdgeInsets.only(top: 90, left: 10, right: 10, bottom: 30),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 25, bottom: 15),
                    child: CircleAvatar(
                      radius: 40,
                      child: Text('T'),
                    ),
                  ),
                ),
                Text(
                  'Tsutsui Ichiha',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Tsutsui@gmail.com',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                SizedBox(
                  height: 25,
                ),
                makeList('Account Settings', Icons.settings_applications),
                divide,
                makeList('Notofications', Icons.notification_important),
                divide,
                makeList('Support', Icons.support),
                divide,
                makeList('Privacy Policy', Icons.privacy_tip),
                divide,
                makeList('Log Out', Icons.logout),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
