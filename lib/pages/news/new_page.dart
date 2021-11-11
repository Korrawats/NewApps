import 'package:flutter/material.dart';
import 'news_list_page_art.dart';
import 'news_list_page_politics.dart';
import 'news_list_page_social.dart';
import 'news_list_page_sport.dart';



class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  var _selectedBottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city_sharp),
            label: 'การเมือง',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer_sharp),
            label: 'กีฬา',
              backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.social_distance_sharp),
            label: 'สังคม',
              backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.art_track_outlined),
            label: 'ศิลปวัฒนธรรม',
              backgroundColor: Colors.black,
          ),
        ],
        currentIndex: _selectedBottomNavIndex,
        onTap: (index) {
          setState(() {
            _selectedBottomNavIndex = index;
          });
        },
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _fetchFoods,
        child: Icon(Icons.add),
      ),*/
      body: _selectedBottomNavIndex == 0
          ? NewsPagePoliticsPage()
          : _selectedBottomNavIndex == 1
          ? NewsPageSportPage()
          : _selectedBottomNavIndex == 2
          ? NewsPageSocialPage()
          : _selectedBottomNavIndex == 3
          ? NewsPageArtPage()
          : null
    );
  }

}
