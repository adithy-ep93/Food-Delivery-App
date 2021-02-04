import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './Restaurants_New.dart';
import './Dishes.dart';

class CakeHome extends StatelessWidget {
  TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            toolbarHeight: 130, // Set this height
            flexibleSpace: Container(
              color: Colors.grey[50],
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .06,
                  ),
                  Container(
                    height: 60,
                    width: 330,
                    //padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26, width: 1),
                      borderRadius: BorderRadius.circular(0),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.grey[50],
                          offset: new Offset(0.0, 0.0),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.chevron_left),
                          title: Text(
                            'Cake',
                            style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold,),
                          ),
                          trailing: Icon(Icons.close),
                        ),
                        //SizedBox(height: MediaQuery.of(context).size.height*.01,),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .04,
                  ),
                ],
              ),
              //SizedBox(height: MediaQuery.of(context).size.height*.01,),
            ),

            bottom: PreferredSize(
                preferredSize: Size.fromHeight(30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 38.0,
                    //height: MediaQuery.of(context).size.width / 0.1,
                    width: MediaQuery.of(context).size.width / 1.4,
                    child: TabBar(
                        unselectedLabelColor: Colors.black,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black),
                        tabs: [
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: Colors.grey[300],
                                    //width: 0.9
                                  )),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Restaurants"),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: Colors.grey[300],
                                    // width: 1
                                  )),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Dishes"),
                              ),
                            ),
                          ),
                        ]),
                  ),
                )),
          ),
          body: TabBarView(
            children: [
              Restaurants_New(),
              Dishes(),
            ],
          ),
        ),
      ),
    );
  }
}
