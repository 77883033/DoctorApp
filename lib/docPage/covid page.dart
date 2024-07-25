import 'package:flutter/material.dart';
import 'package:grid/strings/docStrings.dart';

class Covid extends StatelessWidget {
  const Covid({super.key});

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
              child: Center(child: Text('COVID-19', style: myStyle(25,Colors.black,FontWeight.bold),)),
            ),

            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage('https://tse4.mm.bing.net/th?id=OIP.Cb2M25r5yhxIFvKhYI4ioQHaDt&pid=Api&P=0&h=180'),fit: BoxFit.fill)
              ),
            ),

        SizedBox(height: 20,),
        Column(
          children: [
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 35),
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue.withOpacity(0.4)
                  ),
                  child: Center(child: Text('Cases In Bhutan', style: myStyle(20,Colors.black,FontWeight.bold),)),
                ),

                Container(
                  width: 130,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue.withOpacity(0.4)
                  ),
                  child: Center(child: Text('Total Deaths: 7', style: TextStyle(fontSize : 16, color: Colors.red),)),
                ),
              ],
            ),
          ],
        ),
            SizedBox(height: 5,),

            Container(
              margin: EdgeInsets.all(5),
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/covidBhutan.jpg'),fit: BoxFit.fill)
              ),
        
            ),
            Divider(color: Colors.blueAccent.withOpacity(0.4),),

SizedBox(height: 15,),

          Container(
            margin: EdgeInsets.only(right: 160),
            width: 220,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue.withOpacity(0.4)
            ),
            child: Center(child: Text('First Case in Bhutan', style: myStyle(20,Colors.black,FontWeight.bold),)),
          ),

            Container(
              margin: EdgeInsets.all(10),
             child: Text('${covid}',style: TextStyle(fontSize: 18),),
            ),
            Divider(color: Colors.blueAccent.withOpacity(0.4),),
            SizedBox(height: 10,),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  Text('COVID-19 world Records', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold ),)
  ],
),
            Container(
              margin: EdgeInsets.all(10),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/covidRecord.jpg'),fit: BoxFit.fill)
              ),
            ),
            Divider(color: Colors.blueAccent.withOpacity(0.4),),

            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('COVID-19 Symptoms', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold ),)
              ],
            ),

            Container(
              margin: EdgeInsets.all(10),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/symptoms.jpg'),fit: BoxFit.fill)
              ),

            ),
            Divider(color: Colors.blueAccent.withOpacity(0.4),),







          ],
        ),
      ),
    );
  }
}
