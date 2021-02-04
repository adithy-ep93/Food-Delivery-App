
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../screens/map_screen.dart';
class Login1 extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
  
}

     
  

final List imgList = [
'assets/login/fd.jpg',
'assets/login/r1.jpg',
'assets/login/ff1.jpg',
];



class _SplashState extends State<Login1> {
 
  @override



  @override
  
  
  Widget build(BuildContext context) {
    return Scaffold(
 
      
 
      body: Column(children: [
        Container(
 
          constraints: BoxConstraints.expand(
            height: 500
          ),
          child: imageSlider(context)
          ),

            SizedBox(height: 20,),
        
          Text('Ready to order from top restaurants ?',
          style: TextStyle(
            color:Colors.grey,

            fontSize: 18,
          ),),

          SizedBox(
            height:20
          ),

          
                        FlatButton(onPressed: (){
                            Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => MapScreen()));
                        }, child: Text('SET DELIVERY LOCATION',
                        style: TextStyle(
                          color:Colors.white,
                          fontSize: 18
                        ),
                        
                        ),
                        color: Colors.orange[700],
                       
                          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),),

                           SizedBox(
            height:20
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
                  color:Colors.orange[700],
                  fontSize: 18
                )
              ),
            ],
            
            ),),
          )
      ],),
      
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
                  color: Colors.grey[400], activeColor: Colors.orange[700])),
  //control: new SwiperControl(),
);
 
}


void _PhoneNumberBottomSheet(context){
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
              validator: (value) {
                if (value.isEmpty|| value==value.toString()) {
                  return 'Please enter the Number';
                }
                return null;
              },
            ),
                   ),
             
              RaisedButton(
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
                child: Text('Submit'),
                textColor: Colors.white,
                color: Colors.blueAccent,
              ),
            
             
                ],
              ),
            )
            
            );
  });
}