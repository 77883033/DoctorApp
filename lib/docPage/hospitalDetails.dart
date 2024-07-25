
import 'package:flutter/material.dart';
import 'package:grid/docPage/call.dart';
import 'package:grid/modelClass/models.dart';
import 'package:grid/strings/docStrings.dart';
import 'package:grid/strings/slider.dart';

class Hospitaldetails extends StatelessWidget {
  HosModel hosModel;
   Hospitaldetails({super.key, required this.hosModel});

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
          // margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      image:  DecorationImage(image: AssetImage('${hosModel.url}'),fit: BoxFit.fill),
                    )
                  )
                ],
              ),
          
              Container(
                margin: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: Text('${hosModel.Name}', style: myStyle(20,Colors.black,FontWeight.bold),)),
                    Container(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        Container(width: 10),
                        Text('${hosModel.Place}',style: myStyle(20,Colors.green,FontWeight.bold),),

                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.house_outlined),
                        Container(width: 10),
                        Text('${hosModel.Est}', style: myStyle(20,Colors.black,FontWeight.bold),),
                      ],
                    ),

                    SizedBox(height: 15,),
                    Container(
                        margin: EdgeInsets.only(left: 8, right: 8),
                        child: Text('${hosModel.aboutUs}', style: myStyle(18,Colors.black87),)),
                
                  ],
                ),
              ),

              SizedBox(height: 20,),

              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('${hosModel.Location}'),fit: BoxFit.fill)
                ),
              ),
SizedBox(height: 20,),
              Center(
                child: MaterialButton(
                  color: primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  height: MediaQuery.of(context).size.height * 0.08,
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  onPressed: () {
                  ;  Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>CarouselDemo()));
                  },
                  child: Text("Contact",style: myStyle(22, Colors.white, FontWeight.bold),),
                ),),
          
          SizedBox(height: 10,)
              
            ],
          ),
        ),
      ),
    );
  }
}
