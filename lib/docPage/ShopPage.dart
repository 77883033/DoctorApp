import 'package:flutter/material.dart';
import 'package:grid/strings/docStrings.dart';

class ShopPage extends StatelessWidget {

  List Medicine;
  ShopPage({super.key, required this.Medicine});

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
              height: 60,
              width: double.infinity,
              color: Colors.blue.withOpacity(0.5),
              child: Center(child: Text('MEDICINE ', style: myStyle(25,Colors.black.withOpacity(0.8),FontWeight.bold),)),
            ),

            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage('https://tse3.mm.bing.net/th?id=OIP.zgSUIkO2BDvwQg5UBjiDUQHaFS&pid=Api&P=0&h=180'),fit: BoxFit.fill)
              ),
            ),

SizedBox(height: 12,),

            Container(
              width: 380,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.blueAccent.withOpacity(0.4),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.search),
                  Container(
                    width: 200,
                      height: 30,
                      color: Colors.white54,
                      child: Center(child: Text('Search', style: TextStyle(fontSize: 17),)))
                ],
              ),
            ),

            SizedBox(height: 20,),


            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 30,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.blueAccent,width: 3)
                  ),
                  child: Center(child: Text('All', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black,width: 1),

                  ),
                  child: Center(child: Text('Tablet ', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: 1),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blueAccent.withOpacity(0.2)
                  ),
                  child: Center(child: Text('Syrup', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                )
              ],
            ),

SizedBox(height: 5,),
            Container(
              margin: EdgeInsets.all(5),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: Medicine.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 10,
                      childAspectRatio:0.59),
                      
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    child: Container(
                        color: Colors.blue.withOpacity(0.2),
                        child: Column(
                          children: [
                            SizedBox(height: 5,),
                            // Container(
                            //   margin: EdgeInsets.only(left: 140),
                            //   child: Icon(Icons.favorite_outline, size: 28, color: Colors.red,),
                            // ),
                            SizedBox(height: 5,),
                            Container(
                              width: 160,
                              height: 140,
                              decoration: BoxDecoration(
                                // color: Colors.black,
                                image: DecorationImage(image: AssetImage('${Medicine[index].img}'),fit: BoxFit.fill)
                              ),
                            ),
              
                            SizedBox(height: 5,),
              
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(child: Text('${Medicine[index].Name}', style: myStyle(20,Colors.black,),)),
                                  SizedBox(height: 7,),
                                  Text('Weight:   ${Medicine[index].Weight}', style: TextStyle(fontSize: 18,color: Colors.black),),
                                  Text('Price:      ${Medicine[index].Price}', style: TextStyle(fontSize: 18,color: Colors.black),),
                                ],
                              ),
                            ),
              SizedBox(height: 15,),
                            MaterialButton(
                              elevation: 4,
                              color: Colors.blue.withOpacity(0.7),
                              onPressed: () {
                                showDialog(context: context, builder: (context){
                                  return AlertDialog(
                                    title: Text('Do You Want To Buy ${Medicine[index].Name}?'),
                                    actions: [
                                      TextButton(onPressed: (){
                                        Navigator.pop(context);
                                      }, child:Text('Yes',style: TextStyle(fontSize: 18,color: secondaryColor),),),
              
                                      TextButton(onPressed: (){
                                        Navigator.pop(context);
                                      }, child: Text('No',style: TextStyle(fontSize: 18,color: secondaryColor)))
                                    ],
                                  );
                                });
                              },
              
                              child: Container(
                                width: double.infinity,
                                height: 52,
                                decoration: BoxDecoration(
                                ),
                                child: Center(child: Text('BUY', style: myStyle(25,Colors.greenAccent.withOpacity(0.99),FontWeight.bold),)),
                              ),
                            ),
              
              
              
                          ],
                        )
                    ),
                  );
                },
              ),
            ) ,
            
            
          ],
        ),
      ),
    );
  }
}
