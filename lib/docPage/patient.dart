import 'package:flutter/material.dart';
import 'package:grid/strings/docStrings.dart';

class Patient extends StatelessWidget {
  const Patient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: RichText(
        text: TextSpan(style: myStyle(26, primaryColor, FontWeight.bold),
            children: [
              TextSpan(text: "Bhutanese",),
              TextSpan(text: "Care", style: myStyle(26, secondaryColor, FontWeight.bold)),
              TextSpan(text: "+", style: myStyle(26, primaryColor, FontWeight.bold),),
            ]),
      ),
        centerTitle: true,),

      body: SingleChildScrollView(
        child: Column(
          children: [
        
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.5)
              ),
              child: Center(child: Text('PATIENT', style: myStyle(25,Colors.black.withOpacity(0.7),FontWeight.bold),)),
            ),
            SizedBox(height: 10,),
            
            Container(
              width: 220,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('assets/images/patients.webp'),fit: BoxFit.fill)
              ),
            ),
            SizedBox(height: 15,),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text('Patient Information',style: myStyle(25,primaryColor,FontWeight.bold),)
  ],
),

SizedBox(height: 15,),
           Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Container(
                 margin: EdgeInsets.only(left: 20),
                 child: Column(
                   children: [
                     Container(
                       width: double.infinity,
                       height: 30,
                       child: Row(
                         children: [
                           Container(
                             padding: EdgeInsets.only(left: 10),
                             width: 180,
                             decoration: BoxDecoration(
                                 border: Border.all(color: Colors.black)
                             ),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text('Name', style: myStyle(16,Colors.black,FontWeight.bold),)
                               ],
                             ),
                           ),
                           Container(
                             width: 170,
                             decoration: BoxDecoration(
                                 border: Border.all(color: Colors.black)
                             ),
                             child: Column(
                               children: [
                                 Text('Kinga Penjor', style: myStyle(16,Colors.black))
                               ],
                             ),
                           )


                         ],
                       ),
                     ),
                     Container(
                       width: double.infinity,
                       height: 30,
                       child: Row(
                         children: [
                           Container(
                             padding: EdgeInsets.only(left: 10),
                             width: 180,
                             decoration: BoxDecoration(
                                 border: Border.all(color: Colors.black)
                             ),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text('Date Of Birth', style: myStyle(15,Colors.black,FontWeight.bold))
                               ],
                             ),
                           ),
                           Container(
                             width: 170,
                             decoration: BoxDecoration(
                                 border: Border.all(color: Colors.black)
                             ),
                             child: Column(
                               children: [
                                 Text('23/02/200', style: myStyle(15,Colors.black))
                               ],
                             ),
                           )


                         ],
                       ),
                     ),
                     Container(
                       width: double.infinity,
                       height: 30,
                       child: Row(
                         children: [
                           Container(
                             padding: EdgeInsets.only(left: 10),
                             width: 180,
                             decoration: BoxDecoration(
                                 border: Border.all(color: Colors.black)
                             ),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text('Contact Details', style: myStyle(15,Colors.black,FontWeight.bold))
                               ],
                             ),
                           ),
                           Container(
                             width: 170,
                             decoration: BoxDecoration(
                                 border: Border.all(color: Colors.black)
                             ),
                             child: Column(
                               children: [
                                 Text('+975-7765432', style: myStyle(15,Colors.black))
                               ],
                             ),
                           )


                         ],
                       ),
                     ),
                     Container(
                       width: double.infinity,
                       height: 30,
                       child: Row(
                         children: [
                           Container(
                             padding: EdgeInsets.only(left: 10),
                             width: 180,
                             decoration: BoxDecoration(
                                 border: Border.all(color: Colors.black)
                             ),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text('Emergency Contact', style: myStyle(15,Colors.black,FontWeight.bold))
                               ],
                             ),
                           ),
                           Container(
                             width: 170,
                             decoration: BoxDecoration(
                                 border: Border.all(color: Colors.black)
                             ),
                             child: Column(
                               children: [
                                 Text('+975-1789054', style: myStyle(15,Colors.black,))
                               ],
                             ),
                           )


                         ],
                       ),
                     ),
                     Container(
                       width: double.infinity,
                       height: 30,
                       child: Row(
                         children: [
                           Container(
                             padding: EdgeInsets.only(left: 10),
                             width: 180,
                             decoration: BoxDecoration(
                                 border: Border.all(color: Colors.black)
                             ),
                             child: Column(
                               children: [
                                 Text('Medical Record Number', style: myStyle(14,Colors.black,FontWeight.bold))
                               ],
                             ),
                           ),
                           Container(
                             width: 170,
                             decoration: BoxDecoration(
                                 border: Border.all(color: Colors.black)
                             ),
                             child: Column(
                               children: [
                                 Text('2330', style: myStyle(16,Colors.black))
                               ],
                             ),
                           )


                         ],
                       ),
                     ),
                     Container(
                       width: double.infinity,
                       height: 30,
                       child: Row(
                         children: [
                           Container(
                             padding: EdgeInsets.only(left: 10),
                             width: 180,
                             decoration: BoxDecoration(
                                 border: Border.all(color: Colors.black)
                             ),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text('Email', style: myStyle(15,Colors.black,FontWeight.bold))
                               ],
                             ),
                           ),
                           Container(
                             width: 170,
                             decoration: BoxDecoration(
                                 border: Border.all(color: Colors.black)
                             ),
                             child: Column(
                               children: [
                                 Text('Kinga@gmail.com', style: myStyle(15,Colors.black))
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),

                   ],
                 ),
               ),
             ],
           ),
            SizedBox(height: 15,),

            Container(
              height: 50,
              width: 200,
              child: MaterialButton(
                elevation: 5,
                color: Colors.blue.withOpacity(0.7),
                onPressed: () {
                },
                child: Container(
                  width: double.infinity,
                  height: 53,
                  decoration: BoxDecoration(
                  ),
                  child: Center(child: Text('Edit', style: myStyle(25,Colors.white,FontWeight.bold),)),
                ),
              ),
            ),

            SizedBox(height: 20,),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook,color: Colors.blue,size: 50,),
                  SizedBox(width: 15,),
                  Icon(Icons.email,color: Colors.yellow,size: 50,),
                ],
              ),
            )
        
        
        
          ],
        ),
      ),


    );
  }
}
