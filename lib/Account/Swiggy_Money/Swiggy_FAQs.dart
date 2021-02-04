
import 'package:flutter/material.dart';

class SwiggyFaqs extends StatefulWidget {
  @override
  _SwiggyFaqsState createState() => _SwiggyFaqsState();
}

class _SwiggyFaqsState extends State<SwiggyFaqs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
         iconTheme: IconThemeData(
            color: Colors.black,//backArrow color
        ),
        backgroundColor: Colors.white,
        title: Text('Help & Support',
        style: TextStyle(
          color: Colors.black
        ),),
      ),

      body: SingleChildScrollView(child:
      
      Column(children: [

          Container(
            padding: EdgeInsets.all(20),
            color: Colors.grey[200],
            child: 
          
          Row(
            children: [
              Text('Yummy_Money_FAQ'),
            ],
          )
          
          ,),

          ExpansionTile(
            
            
            title: Text('What Is Yummy Money ?',
            style: TextStyle(color: Colors.black),),

            children: [

              Container(
                padding: EdgeInsets.all(10),
                child:
                 Text(
                   'Yummy Money has been launched as Yummy native digital wallet to take on the likes of Amazon Pay and Paytm. The food delivery platform has partnered with ICICI Bank to enable the new experience through which consumers can avail “one-click” checkouts. '))

            ]
            
            ,),

            Divider(color: Colors.grey,),

            ExpansionTile(
            
            title: Text('Why should i optfor Yummy money ?',
             style: TextStyle(color: Colors.black),),
            children: [

              Container(
                padding: EdgeInsets.all(10),
                child:
                 Text(
                   'Yummy Money has been launched as Yummy native digital wallet to take on the likes of Amazon Pay and Paytm. The food delivery platform has partnered with ICICI Bank to enable the new experience through which consumers can avail “one-click” checkouts. '))

            ]
            
            ,),
             Divider(color: Colors.grey,),

            ExpansionTile(
            
            title: Text('How can i get Yummy Money For MySelf ?',
             style: TextStyle(color: Colors.black),),
            children: [

              Container(
                padding: EdgeInsets.all(10),
                child:
                 Text(
                   'Yummy Money has been launched as Yummy native digital wallet to take on the likes of Amazon Pay and Paytm. The food delivery platform has partnered with ICICI Bank to enable the new experience through which consumers can avail “one-click” checkouts. '))

            ]
            
            ,),

            Divider(color: Colors.grey,),

            ExpansionTile(
            
            title: Text('Is my Money safe withYummy money ?',
             style: TextStyle(color: Colors.black),),
            children: [

              Container(
                padding: EdgeInsets.all(10),
                child:
                 Text(
                   'Yummy Money has been launched as Yummy native digital wallet to take on the likes of Amazon Pay and Paytm. The food delivery platform has partnered with ICICI Bank to enable the new experience through which consumers can avail “one-click” checkouts. '))

            ]
            
            ,),


              Divider(color: Colors.grey,),

            ExpansionTile(
            
            title: Text('Is kyc required for Yummy Moneym ?',
             style: TextStyle(color: Colors.black),),
            children: [

              Container(
                padding: EdgeInsets.all(10),
                child:
                 Text(
                   'Yummy Money has been launched as Yummy native digital wallet to take on the likes of Amazon Pay and Paytm. The food delivery platform has partnered with ICICI Bank to enable the new experience through which consumers can avail “one-click” checkouts. '))

            ]
            
            ,),


              Divider(color: Colors.grey,),

            ExpansionTile(
            
            title: Text('What kyc do i required ?',
             style: TextStyle(color: Colors.black),),
            children: [

              Container(
                padding: EdgeInsets.all(10),
                child:
                 Text(
                   'Yummy Money has been launched as Yummy native digital wallet to take on the likes of Amazon Pay and Paytm. The food delivery platform has partnered with ICICI Bank to enable the new experience through which consumers can avail “one-click” checkouts. '))

            ]
            
            ,),

            Divider(color: Colors.grey,),

            ExpansionTile(
            
            title: Text('Are there any transaction limit on the wallet ?',
             style: TextStyle(color: Colors.black),),
            children: [

              Container(
                padding: EdgeInsets.all(10),
                child:
                 Text(
                   'Yummy Money has been launched as Yummy native digital wallet to take on the likes of Amazon Pay and Paytm. The food delivery platform has partnered with ICICI Bank to enable the new experience through which consumers can avail “one-click” checkouts. '))

            ]
            
            ,),


            Divider(color: Colors.grey,),

            ExpansionTile(
            
            title: Text('Where can i use Yummy Money ?',
             style: TextStyle(color: Colors.black),),
            children: [

              Container(
                padding: EdgeInsets.all(10),
                child:
                 Text(
                   'Yummy Money has been launched as Yummy native digital wallet to take on the likes of Amazon Pay and Paytm. The food delivery platform has partnered with ICICI Bank to enable the new experience through which consumers can avail “one-click” checkouts. '))

            ]
            
            ,),


            Divider(color: Colors.grey,),

            ExpansionTile(
            
            title: Text('How can i add money to Yummy money ?',
             style: TextStyle(color: Colors.black),),
            children: [

              Container(
                padding: EdgeInsets.all(10),
                child:
                 Text(
                   'Yummy Money has been launched as Yummy native digital wallet to take on the likes of Amazon Pay and Paytm. The food delivery platform has partnered with ICICI Bank to enable the new experience through which consumers can avail “one-click” checkouts. '))

            ]
            
            ,),

             Divider(color: Colors.grey,),

            ExpansionTile(
            
            title: Text('can i close my Yummy money wallet ?',
             style: TextStyle(color: Colors.black),),
            children: [

              Container(
                padding: EdgeInsets.all(10),
                child:
                 Text(
                   'Yummy Money has been launched as Yummy native digital wallet to take on the likes of Amazon Pay and Paytm. The food delivery platform has partnered with ICICI Bank to enable the new experience through which consumers can avail “one-click” checkouts. '))

            ]
            
            ,),

             Divider(color: Colors.grey,),

            ExpansionTile(
            
            title: Text('Does Yummy money expires ?',
             style: TextStyle(color: Colors.black),),
            children: [

              Container(
                padding: EdgeInsets.all(10),
                child:
                 Text(
                   'Yummy Money has been launched as Yummy native digital wallet to take on the likes of Amazon Pay and Paytm. The food delivery platform has partnered with ICICI Bank to enable the new experience through which consumers can avail “one-click” checkouts. '))

            ]
            
            ,),



      ],),
      
      ),
      
    );
  }
}