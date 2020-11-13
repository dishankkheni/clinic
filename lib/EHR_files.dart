import 'package:clinicapp2/constants.dart';
import 'package:flutter/material.dart';

class EHRFiles extends StatelessWidget {
  final tabText = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

  final greyColor = TextStyle(color: Colors.grey);

  Widget titleData(String time) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        children: [
          Text(
            time,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
            ),
          ),
          Text(
            'Actions',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          IconButton(icon: Icon(Icons.filter_list), onPressed: null)
        ],
      ),
    );
  }

  Widget listData(
      {String title,
      String subtitle,
      IconData iconData,
      String energyName,
      String time}) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Icon(
                iconData,
                color: Color(0xff6574CF),
              ),
              backgroundColor: Colors.purple[50],
            ),
            title: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            subtitle: Text(
              subtitle,
              style: greyColor,
            ),
            trailing: Checkbox(
              onChanged: (_) {},
              value: false,
              hoverColor: Colors.purple[50],
            ),
          ),
          Divider(
            indent: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.flash_on,
                      color: Colors.grey,
                    ),
                    Text(
                      energyName,
                      style: greyColor,
                    ),
                  ],
                ),
                VerticalDivider(
                  indent: 1,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.perm_contact_calendar,
                      color: Colors.grey,
                    ),
                    Text(
                      time,
                      style: greyColor,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.purple[50],
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('EHR Files', style: appTitle),
          actions: [
            Icon(
              Icons.search,
              color: Color(0xffB5BAC8),
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.medical_services_rounded,
              color: Color(0xffB5BAC8),
            ),
            SizedBox(
              width: 20,
            ),
          ],
          bottom: TabBar(
            tabs: [
              Text(
                'SHARED',
                style: tabText,
              ),
              Text(
                'MY FILES',
                style: tabText,
              ),
            ],
            labelColor: Color(0xff6574CF),
            unselectedLabelColor: Colors.grey,
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('data')),
            ListView(
              children: [
                titleData('May 2020'),
                listData(
                    time: '17.05.20',
                    title: 'Blood Test.pdf',
                    subtitle: '39Mb',
                    iconData: Icons.file_copy,
                    energyName: 'Endocrinology'),
                listData(
                    time: '17.05.20',
                    title: 'Blood Test.pdf',
                    subtitle: '39Mb',
                    iconData: Icons.file_copy,
                    energyName: 'Endocrinology'),
                titleData('June 2020'),
                listData(
                    time: '17.04.20',
                    title: 'Blood Test.pdf',
                    subtitle: '39Mb',
                    iconData: Icons.file_copy,
                    energyName: 'Endocrinology'),
                listData(
                    time: '17.05.20',
                    title: 'Blood Test.pdf',
                    subtitle: '39Mb',
                    iconData: Icons.file_copy,
                    energyName: 'Endocrinology'),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
