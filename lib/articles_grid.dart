import 'package:clinicapp2/constants.dart';
import 'package:flutter/material.dart';

class ArticlesGrid extends StatelessWidget {
  Widget titleData(String title) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          Text(
            title,
            style: appTitle,
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
            ),
          ),
          GestureDetector(
            child: Text('See All'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget cardData(
      String date, String title, String subtitle, IconData icons, Color colrs) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            //  padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(
              top: 8,
            ),
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              color: colrs,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Row(
              children: [
                Text(
                  '12 JUL, 2020',
                  style: TextStyle(color: Colors.white),
                ),
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                  ),
                ),
                Icon(
                  Icons.favorite_outline_outlined,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'COVID-19 vaccine',
                  style: appTitle.copyWith(color: Colors.white, fontSize: 25),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      'Some Description',
                      style: TextStyle(color: Colors.white),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                      ),
                    ),
                    if (icons != null)
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget list() {
    return Container(
      //  height: 150,
      // width: double.infinity,
      child: Row(
        children: [
          cardData('12 JUL, 2020', 'COVID- 19 vaccine', 'Some Description',
              Icons.arrow_right_outlined, Colors.purple[300]),
          cardData('12 JUL, 2020', 'COVID- 19 vaccine', 'Some Description',
              Icons.arrow_right_outlined, Colors.purple[300]),
          cardData('12 JUL, 2020', 'COVID- 19 vaccine', 'Some Description',
              Icons.arrow_right_outlined, Colors.purple[300]),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Releted Articles',
            style: appTitle,
          ),
          actions: [
            Icon(
              Icons.filter_alt,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size(double.infinity, 70),
            child: Container(
              color: Colors.purple[50],
              height: 50,
              margin: EdgeInsets.all(12),
              child: TextField(
                textAlignVertical: TextAlignVertical.bottom,
                decoration: (InputDecoration(
                  //     fillColor: Colors.purple[50],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  hintText: 'Search Articles',
                  suffixIcon: Icon(Icons.search),
                )),
              ),
            ),
          ),
        ),
        body: ListView(
          //scrollDirection: Axis.horizontal,
          children: [
            titleData('Hot Themes'),
            list(),
            SizedBox(
              height: 15,
            ),
            titleData('Related Articals'),
            cardData('12 JUL 2020', 'Dogs are carryong the virus',
                'Some Description', null, Colors.purple[300]),
            cardData('12 JUL 2020', 'Some Title', 'Some Description', null,
                Colors.purple[300]),
          ],
        ),
      ),
    );
  }
}
