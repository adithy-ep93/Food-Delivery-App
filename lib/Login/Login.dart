import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../screens/map.dart';

//import 'package:FoodDelivery/util/color.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}


final List imgList = [
'assets/login/fd.jpg',
'assets/login/r1.jpg',
'assets/login/ff1.jpg',
];

  final _text = TextEditingController();
  bool _validate = false;

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
 
          
 
          body: SingleChildScrollView(
                    child: Column(children: [
      Container(
        
 
        constraints: BoxConstraints.expand(
            height: MediaQuery.of(context).size.height*.55
        ),
        child: imageSlider(context)
        ),

            SizedBox(height: MediaQuery.of(context).size.height*.05,),
      
        Text('Ready to order from top restaurants ?',
        style: TextStyle(
            color:Colors.grey,

            fontSize: 18,
        ),),

        SizedBox(
            height: MediaQuery.of(context).size.height*.05,
        ),

                        FlatButton(onPressed: (){
                            Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => MapsDemo()));
                        }, child: Text('SET DELIVERY LOCATION',
                        style: TextStyle(
                          color:Color(0xffDfd7cc),
                          fontSize: 18
                        ),
                        
                        ),
                        color: Color(0xff550d0e),
                       
                          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),),

                           SizedBox(
            height: MediaQuery.of(context).size.height*.05,
        ),
        GestureDetector(

            onTap: ()=>{
                  _PhoneNumberBottomSheet(context)
            },
                      child: RichText(text: TextSpan(text: 'Have an account?',style: TextStyle(
              color:Colors.grey,
              fontSize: 18
            ),
            children: [
              TextSpan(
                text:'Login',
                style: TextStyle(
                  color:Color(0xff550d0e),
                  fontSize: 18
                )
              ),
            ],
            
            ),),
        )
            ],),
          ),
          
        
    );
  }
}

Swiper imageSlider(context){
 
return new Swiper(
  
  autoplay: true,
  duration: 1500,
  itemBuilder: (BuildContext context, int index) {
     return new Image.asset(
                  imgList[index],
                  fit: BoxFit.fill,);
 
  },
  
  itemCount: 3,
  viewportFraction: 1,
  scale: .9,
 pagination: new SwiperPagination(
              margin: new EdgeInsets.all(5.0),
              builder: new DotSwiperPaginationBuilder(
                  color: Colors.grey[400], activeColor:Color(0xff550d0e))),
  //control: new SwiperControl(),
);
 
}


void _PhoneNumberBottomSheet(context){
 final _formKey = GlobalKey<FormState>();  
  showModalBottomSheet(context:context,builder:(BuildContext bc){
    
 
          return SingleChildScrollView(
                      child: Container(
              
              height: MediaQuery.of(context).size.height *60,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      
                      Text('LOGIN',
                      style: TextStyle(
                        color:Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        
                      ),
                      
                      ),
                    ],
                  ),

                  Row(
                     children: [
                       Text('Enter your phone number to proceed',
                       style: TextStyle(
                         color:Colors.grey[500],
                       ),)
                     ],
                  ),

                  SizedBox(height: 20,),

                  Row(
                     children: [
                       Text('10 digit mobile number',
                       style: TextStyle(
                         color:Colors.grey[500],
                       ),)
                     ],
                  ),
                  
                  
                   SizedBox(height: 10,),
                  Form(
                          key: _formKey, 
                          child: TextFormField(

                            decoration:InputDecoration(prefixText: '+91' ) ,
                            
                            maxLength: 10,

                            keyboardType: TextInputType.number,
                validator: (value) {
                  if (value.isEmpty ) {
                    return 'Please enter the Number';
                  }else if(value.length<10){
                    return 'Must need 10 Digit';
                  }
                  return null;
                },
              ),

              
                     ),
             SizedBox(height: 20,),
              RaisedButton(
                padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                 onPressed: () {
                     // Validate returns true if the form is valid, or false
                    // otherwise.
                    if (_formKey.currentState.validate()) {
                      // If the form is valid, display a Snackbar.
                      Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text('Processing Data')
              )
              
              );
                    }
                  },
                child: Text('ENTER PHONE NUMBER',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                textColor: Colors.white,
                color: Color(0xff550d0e),
              ),
            
             
                ],
              ),
            )
            
            ),
          );
  });
}