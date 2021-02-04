import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class ActivateSwiggy extends StatefulWidget {
  
  @override
  
  _ActivateSwiggyState createState() => _ActivateSwiggyState();
}

class _ActivateSwiggyState extends State<ActivateSwiggy> {

  // bool isEnabled = true ;
 
  // disableButton(){
 
  //   setState(() {
  //     isEnabled = false;
  //   });
  // }

  DateTime _dateTime = DateTime.now();
  String dropdownValue = 'One';
  

  
  @override
  
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Activate Yummy Money',
        style: TextStyle(
          color:  Colors.black
        ),),
        backgroundColor:  Colors.white,
        iconTheme:IconThemeData(color: Colors.black) ,),
        
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(children: [

              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(children: [

                      Text('MOBILE'),

                    ],),
                  ),

                  Container(
                padding: EdgeInsets.all(10),
                child: Row(children: [

                  Text('8745877745'),

                ],),
              )
                ],
              ),


              Form(
                
              child: Column(
                children: [
                  
                  TextFormField(
                    decoration: InputDecoration(
                                  labelText: 'First Name'
                                   ),
                  ),


                  SizedBox(height: MediaQuery.of(context).size.height*.02,),

                  TextFormField(

                     
                    decoration: InputDecoration(
                                  labelText: 'Last Name'
                                   ),
                  ),

                   SizedBox(height: MediaQuery.of(context).size.height*.02,),

                  TextFormField(
                     initialValue: '${_dateTime.day}/${_dateTime.month}/${_dateTime.year}',
                     
                     
                    onTap: (){
                     //createAlertDialog(context);
                    return showDialog(context: context,builder:(context){

                      
                    return AlertDialog(

          
              title: Text('Select your Date Of Birth'),
              content: Container(
                height: 300,
                width: 800,
                child: Column(
        children: [
          Container(
      height: 200,
     
            
            child: CupertinoDatePicker(
              
              mode: CupertinoDatePickerMode.date,
              //use24hFormat: true,
              onDateTimeChanged: (dateTime){
              print(dateTime);

              setState(() {
                
                _dateTime = dateTime;
              });
            },
            ),
          ),

          SizedBox(height: MediaQuery.of(context).size.height*.04,),

           FlatButton(onPressed: (){
             
                showDialog(context:context,

                
                  builder: (_) =>AlertDialog(title: Text('data'),
                  
                  content: Text('${_dateTime.day}/${_dateTime.month}/${_dateTime.year}'),
                   
                  ) ,
                 );

                }, child: Text('DONE',
                style: TextStyle(
                  color:Colors.orange[700],
                  fontSize: 18
                ),
                
                ),
                color: Colors.white,
               
                  padding: EdgeInsets.fromLTRB(35, 15, 35, 15),),


                    ],
                ),
              ),
            );
           });
                     
                    },
                      decoration: InputDecoration(
                                    labelText: 'Date Of Birth'
                                     ),
                    ),


                     SizedBox(height: MediaQuery.of(context).size.height*.02,),

                   GestureDetector(
                     onTap: (){

                        _EditAccount(context);

                     },
                                        child: TextFormField(

                       initialValue: 'PAN',
                       enabled: false,
                      decoration: InputDecoration(
                                    labelText: 'Government ID'
                                     ),
                  ),
                   ),

                   SizedBox(height: MediaQuery.of(context).size.height*.02,),

                  TextFormField(

                     
                    decoration: InputDecoration(
                                  labelText: 'PAN Number'
                                   ),
                  ),


                  SizedBox(height: MediaQuery.of(context).size.height*.03,),

                  Image(image: AssetImage('assets/login/b1.jpg',
                  ),),

                   SizedBox(height: MediaQuery.of(context).size.height*.03,),

                   FlatButton(
                     
                     
                        
                     onPressed: null,
                     disabledColor: Colors.brown[200],
                     
  
  
   child: Text('Confirm Details',
                style: TextStyle(
                  color:Colors.white,
                  fontSize: 18
                ),
                
                ),
                color: Color(0xff550d0e),
               
                  padding: EdgeInsets.fromLTRB(35, 15, 35, 15),),


                     
                ],
              ),
              
              
              ),

              

          ],)
          
          ,),

    );
  }
}

// createAlertDialog(BuildContext context){
  
//     return showDialog(context: context,builder:(context){
//         return AlertDialog(
//               title: Text('Delete Address'),
//               content: Container(
//                 height: 300,
//                 width: 800,
//                 child: Column(
//         children: [
//           Container(
//       height: 200,
     
            
//             child: CupertinoDatePicker(
          
//               onDateTimeChanged: (dateTime){
//               print(dateTime);

              
//             },
//             ),
//           ),

//           SizedBox(height: MediaQuery.of(context).size.height*.04,),

//            FlatButton(onPressed: (){
          
//                 }, child: Text('DONE',
//                 style: TextStyle(
//                   color:Colors.orange[700],
//                   fontSize: 18
//                 ),
                
//                 ),
//                 color: Colors.white,
               
//                   padding: EdgeInsets.fromLTRB(35, 15, 35, 15),),


//         ],
//                 ),
//               ),
//             );
//     });
//   }



  void _EditAccount(context){
 final _formKey = GlobalKey<FormState>();  
  showModalBottomSheet(context:context,builder:(BuildContext bc){
    
 
          return Container(
            
            height: MediaQuery.of(context).size.height *60,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    
                    Text('Select GovernMent ID',
                    style: TextStyle(
                      color:Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      
                    ),
                    
                    ),
                  ],
                ),

                

                SizedBox(height: MediaQuery.of(context).size.height*.02,),

               ListTile(
                  trailing: Icon(Icons.chevron_right),
                 title:Text('PAN') ,),

                 Divider(color: Colors.black,),

                 ListTile(
                  trailing: Icon(Icons.chevron_right),
                 title:Text('DRIVING LICENSE') ,),

                 Divider(color: Colors.black,),

                 ListTile(
                  trailing: Icon(Icons.chevron_right),
                 title:Text('PASSPORT') ,),

                 Divider(color: Colors.black,),
                 ListTile(
                  trailing: Icon(Icons.chevron_right),
                 title:Text('VOTER ID') ,),

                 Divider(color: Colors.black,),

                 ListTile(
                  trailing: Icon(Icons.chevron_right),
                 title:Text('AADHAR') ,),

          
           
              ],
            ),
          )
          
          );
  });
}