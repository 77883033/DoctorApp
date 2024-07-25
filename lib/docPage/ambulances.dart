import 'package:flutter/material.dart';
import 'package:grid/docPage/call.dart';
import 'package:grid/strings/docStrings.dart';

class Embulances extends StatelessWidget {
  const Embulances({super.key});

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
        child: Container(
          // margin: EdgeInsets.all(5),
          child: Column(
            children: [

              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.5)
                ),
                child: Center(child: Text('AMBULANCE SERVICES', style: myStyle(25,Colors.black.withOpacity(0.7),FontWeight.bold),)),
              ),

              SizedBox(height: 5),
          
              Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  elevation: 4,
                  child: Column(
                    children: [
                      Container(
                        height: 190,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            // borderRadius: BorderRadius.only(topLeft: Radius.circular(50),),
                            border: Border.all(color: Colors.black),
                            image: DecorationImage(image: AssetImage('assets/images/MongarHos.jpg',),fit: BoxFit.fill,)
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 7,left: 225, right: 7),
                              width: 310,
                              height: 45,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                color: Colors.blue.withOpacity(0.7),
                                // borderRadius: BorderRadius.circular(30)
                              ),
                              child: Center(child: Text('Mongar Hospital',style: myStyle(15,Colors.white,FontWeight.bold,),)),
                            ),
                            // Container(
                            //   margin: EdgeInsets.only(top: 10,left: 290),
                            //   width: 100,
                            //   height: 45,
                            //   decoration: BoxDecoration(
                            //       border: Border.all(color: Colors.white),
                            //       color: Colors.blue.withOpacity(0.6),
                            //       borderRadius: BorderRadius.circular(30)
                            //   ),
                            //   child: Center(child: Text('Mongar',style: myStyle(15,Colors.white,FontWeight.bold),)),
                            // ),
                          ],
                        ),
                      ),
                
                
                      MaterialButton(
                        elevation: 5,
                        color: Colors.blue.withOpacity(0.7),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Call(),));
                        },
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                          ),
                          child: Center(child: Text('CALL', style: myStyle(25,Colors.greenAccent,FontWeight.bold),)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Container(
                        height: 190,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            // borderRadius: BorderRadius.only(topLeft: Radius.circular(50),),
                            border: Border.all(color: Colors.black),
                            image: DecorationImage(image: AssetImage('assets/images/thimphuhos.jpg'),)
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 7,left: 225, right: 7),
                              width: 150,
                              height: 45,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  color: Colors.blue.withOpacity(0.7),
                                  // borderRadius: BorderRadius.circular(30)
                              ),
                              child: Center(child: Text('JDWNR Hospital',style: myStyle(15,Colors.white,FontWeight.bold),)),
                            ),
                            // Container(
                            //   margin: EdgeInsets.only(top: 10,left: 280),
                            //   width: 120,
                            //   height: 45,
                            //   decoration: BoxDecoration(
                            //       // border: Border.all(color: Colors.white),
                            //       color: Colors.blue.withOpacity(0.7),
                            //       borderRadius: BorderRadius.circular(30)
                            //   ),
                            //   child: Center(child: Text('Thimphu',style: myStyle(15,Colors.white,FontWeight.bold),)),
                            // ),
                          ],
                        ),
                      ),
                
                      MaterialButton(
                        elevation: 5,
                        color: Colors.blue.withOpacity(0.7),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Call(),));
                
                        },
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                          ),
                          child: Center(child: Text('CALL', style: myStyle(25,Colors.greenAccent,FontWeight.bold),)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Container(
                        height: 190,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            // borderRadius: BorderRadius.only(topLeft: Radius.circular(50),),
                            border: Border.all(color: Colors.black),
                            image: DecorationImage(image: AssetImage('assets/images/parohos.jpg'),fit: BoxFit.fill)
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 7,left: 240,right: 7),
                              width: 130,
                              height: 45,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  color: Colors.blue.withOpacity(0.7),
                                  // borderRadius: BorderRadius.circular(30)
                              ),
                              child: Center(child: Text('Paro Hospital',style: myStyle(15,Colors.white,FontWeight.bold),)),
                            ),
                            // Container(
                            //   margin: EdgeInsets.only(top: 10,left: 290),
                            //   width: 100,
                            //   height: 45,
                            //   decoration: BoxDecoration(
                            //       border: Border.all(color: Colors.white),
                            //       color: Colors.blue.withOpacity(0.7),
                            //       borderRadius: BorderRadius.circular(30)
                            //   ),
                            //   child: Center(child: Text('Paro',style: myStyle(15,Colors.white,FontWeight.bold),)),
                            // ),
                          ],
                        ),
                      ),
                
                      MaterialButton(
                        elevation: 5,
                        color: Colors.blue.withOpacity(0.6),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Call(),));
                
                        },
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                          ),
                          child: Center(child: Text('CALL', style: myStyle(25,Colors.greenAccent,FontWeight.bold),)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      Container(
                        height: 190,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            // borderRadius: BorderRadius.only(topLeft: Radius.circular(50),),
                            border: Border.all(color: Colors.black),
                            image: DecorationImage(image: AssetImage('assets/images/plinghos.jpg'),fit: BoxFit.fill)
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 7,left: 230,right: 7),
                              width: 160,
                              height: 45,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  color: Colors.blue.withOpacity(0.7),
                                  // borderRadius: BorderRadius.circular(30)
                              ),
                              child: Center(child: Text('Pling Hospital',style: myStyle(15,Colors.white,FontWeight.bold),)),
                            ),
                            // Container(
                            //   margin: EdgeInsets.only(top: 10,left: 290),
                            //   width: 150,
                            //   height: 45,
                            //   decoration: BoxDecoration(
                            //       border: Border.all(color: Colors.white),
                            //       color: Colors.blue.withOpacity(0.7),
                            //       borderRadius: BorderRadius.circular(30)
                            //   ),
                            //   child: Center(child: Text('Chhukha',style: myStyle(15,Colors.white,FontWeight.bold),)),
                            // ),
                          ],
                        ),
                      ),
                
                      MaterialButton(
                        elevation: 5,
                        color: Colors.blue.withOpacity(0.6),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Call(),));
                
                        },
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                          ),
                          child: Center(child: Text('CALL', style: myStyle(25,Colors.greenAccent,FontWeight.bold),)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          
          
          
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}
