import 'package:flutter/material.dart';
import 'package:grid/data/data.dart';
import 'package:grid/docPage/ShopPage.dart';
import 'package:grid/strings/docStrings.dart';

class MedicineP extends StatelessWidget {
  const MedicineP({super.key});

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

    body: Column(
    children: [

      Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.5)
        ),
        child: Center(child: Text('PHARMACY SHOP', style: myStyle(25,Colors.black.withOpacity(0.8),FontWeight.bold),)),
      ),

      SizedBox(height: 10,),


      Container(
        margin: EdgeInsets.all(5),
        child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: allMed.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 10,
              childAspectRatio:0.64),
        
          itemBuilder: (context, index) {
            return InkWell(onTap: () {
            },
        
              child: Card(
                elevation: 4,
                child: Container(
                  color: Colors.blue.withOpacity(0.2),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('${allShop[index].link}'),fit: BoxFit.fill)
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(top: 5, left: 15),
                                width: double.infinity,
                                child:
                                Center(child: Text('${allShop[index].Name}', style: myStyle(20, Colors.black,FontWeight.bold,),))),
                            Text('${allShop[index].Location}', style: myStyle(15,Colors.black,FontWeight.bold),),
                            
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Reviews  ',),
                                Text('  ${allShop[index].Review}'),
                              ],
                            ),
        
                            SizedBox(height: 10,),
                            MaterialButton(
                              elevation: 5,
                              color: Colors.blue.withOpacity(0.7),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (builder) => ShopPage(Medicine: allMed[index],)));
        
                              },
                              child: Container(
                                margin: EdgeInsets.only(top: 8),
                                width: double.infinity,
                                height: 40,
                                decoration: BoxDecoration(
                                ),
                                child: Center(child: Text('Visit', style: myStyle(25,Colors.greenAccent.withOpacity(0.99),FontWeight.bold),)),
                              ),
                            ),
                            
        
                          ],
                        )
        
        
                      ],
                    )
                ),
              ),
            );
          },
        ),
      ) ,
        ],
    ),
    );
  }
}
