import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Helpmain extends StatelessWidget {
  // This widget is the root of your application. 
  IconData get k => null;
  

final title = ['General issues', 'Legal, Teams & Conditions', 'FAQs', 'Swiggy SUPER FAQs', 
        'Swiggy Money FAQs'];

final title1 = ['All conversation threads'];


  //final ScrollController _scrollController =ScrollController ();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_sharp, color: Colors.black
            ),
        ),
        title: Text(
          "HELP",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView( 
       
              child: new Container(
          child: Column(
            children: [
              Container(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 25, 20, 20),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "HELP WITH OTHER QUERIES",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black87,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.0,
              ),
            //  ListView(
            //       scrollDirection: Axis.vertical,
            //       shrinkWrap: true,
            //       children: <Widget>[
                   
            
            //         // ListTile(
            //         //   leading: Image.asset(
            //         //     'assets/Account/Paymentmodes/pm2.jpg',height: 30,width: 30, ),
            //         //   title: Text('Mobikwik',style: TextStyle( fontSize: 14),),
            //         //   trailing: Text(
            //         //     "LINK ACCOUNT",
            //         //     style: TextStyle(color: Colors.orange[700], fontSize: 10,fontWeight: FontWeight.bold,),
            //         //   ),

            //         //    onTap: (){
            //         //     showAlertDialog1(context);
            //         //   },

            //         // ),
            //         // Divider(color: Colors.black12,),
                   
            //       ],
            //     ),

            SingleChildScrollView(
                          child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  
        itemCount: title.length,
        itemBuilder: (context, index) {
          return Column( 
            children: <Widget>[

                       ListTile(
                  title: Text(title[index],
                  style: TextStyle(
                              fontSize: 14.0,
                             // color: Colors.black87,
                              //fontWeight: FontWeight.bold,
                            ),
                  ),
                  trailing: Icon(Icons.chevron_right),
            ),
            Divider(),  //Divider
          ],
          );
          
          },
                ),
            ),
            
            Container(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 25, 20, 20),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "CONVERSATION ARCHIVE",
                          style: TextStyle(
                            fontSize: 12.0,
                           // color: Colors.black87,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),


                 SingleChildScrollView(
                          child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  
        itemCount: title1.length,
        itemBuilder: (context, index) {
          return ListTile(
                title: Text(title1[index],style: TextStyle(
                            fontSize: 14.0,
                           // color: Colors.black87,
                            //fontWeight: FontWeight.bold,
                          ),
                ),
                trailing: Icon(Icons.chevron_right),
          );
          },
                ),
            ),



            
            ],
          ),
        ),
      ),

      
    );
  }
}
