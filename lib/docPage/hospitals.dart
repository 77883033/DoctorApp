import 'package:flutter/material.dart';
import 'package:grid/data/data.dart';
import 'package:grid/docPage/hospitalDetails.dart';
import 'package:grid/strings/docStrings.dart';

class AllHospitals extends StatelessWidget {
  const AllHospitals({super.key});

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
              child: Center(child: Text('HOSPITALS', style: myStyle(25,Colors.black,FontWeight.bold),)),
            ),
        
            Container(
              margin: EdgeInsets.all(5),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: allHOS.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4,
                    childAspectRatio:0.68),

                itemBuilder: (context, index) {
                  return InkWell(onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (builder) => Hospitaldetails(hosModel: allHOS[index],)));
                  },

                    child: Card(
                      elevation: 4,
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('${allHOS[index].url}'),fit: BoxFit.fill)
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 5, left: 15),
                                  width: double.infinity,
                                    child:
                                    Text('${allHOS[index].Name}', style: myStyle(18, Colors.black,FontWeight.bold,),)),
                              ],
                            ),
                            SizedBox(height: 12,),

                            MaterialButton(
                              elevation: 5,
                              color: Colors.blue.withOpacity(0.7),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (builder) => Hospitaldetails(hosModel: allHOS[index],)));

                              },
                              child: Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                ),
                                child: Center(child: Text('Click', style: myStyle(25,Colors.greenAccent.withOpacity(0.99),FontWeight.bold),)),
                              ),
                            ),


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
      ),
    );
  }
}
