import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './FirstScreen.dart';
import './SecondScreen.dart';


class Offers extends StatelessWidget {
  TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
           iconTheme: IconThemeData(color: Colors.black),
          //  leading: GestureDetector(
          //    onTap: (){
          //      Navigator.push(
          //                     context,
          //                       MaterialPageRoute(
          //                            builder: (BuildContext context) =>Account()));
          //    },
          //    child: Icon(Icons.arrow_back_sharp)),
            backgroundColor: Colors.white,
            
            title: Text(
              "OFFERS ",
              style: TextStyle(
                
                
                color: Colors.black,
              ),
            ),
            bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: "RESTAURANT OFFERS"),
                Tab(text: "MY COUPONS")
              ],
            ),
          ),
          body: TabBarView(
            children: [
              FirstScreen(),
              SecondScreen(),
            ],
          ),
        ),
      
    );
  }
}
