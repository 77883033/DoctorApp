
import 'package:flutter/material.dart';
import 'package:grid/data/data.dart';
import 'package:grid/docPage/ambulances.dart';
import 'package:grid/docPage/covid%20page.dart';
import 'package:grid/docPage/hospitals.dart';
import 'package:grid/docPage/medicineP.dart';
import 'package:grid/docPage/patient.dart';
import 'package:grid/doctorsDetails.dart';
import 'package:grid/strings/docStrings.dart';

class doctor extends StatelessWidget {
  const doctor({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu, size: 30,),
              RichText(
              text: TextSpan(style: myStyle(20, primaryColor, FontWeight.bold),
              children: [
                    TextSpan(text: "Bhutanese",),
                    TextSpan(text: "Care", style: myStyle(20, secondaryColor, FontWeight.bold)),
                    TextSpan(text: "+"),]),
              ),

              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Patient()));
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue),
                      image: DecorationImage(
                      image: AssetImage("assets/images/doctor1.png")),
                  ),
                ),
              )
            ],
          ),

          SizedBox(height: 20,),

          Container(
            height: MediaQuery.of(context).size.height * 0.3, width: double.infinity,
            child: Row(children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.49,
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Text("Stay Healthy!", style: myStyle(25, Colors.black, FontWeight.bold), maxLines: 1,),
                    Text("Stay Safe!", style: myStyle(22, Colors.black, FontWeight.bold), maxLines: 1,),
                    Text("We provide good services to our patients. We are open 24/7. Do contact us any time you need.",),

                    Row(children: [
                      Icon(Icons.video_call, color: primaryColor, size: 35,),

                        SizedBox(width: 20,),

                      Text("Meet Online", style: myStyle(18, secondaryColor, FontWeight.bold),),
                      ],
                    ),
                  ],),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.50,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  border: Border.all(color: primaryColor),
                  // borderRadius: BorderRadius.circular(50),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                  image: DecorationImage(
                      image: AssetImage("assets/images/doc.jpg"),
                      fit: BoxFit.cover),),
              ),
            ],
            ),),

          SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Services", style: myStyle(25, primaryColor, FontWeight.bold),),
              Text("See all", style: myStyle(18, Colors.black,),),
            ],
          ),

          SizedBox(height: 10,),

          /// Animated Icons
          Container(
            padding: EdgeInsets.all(15),
            
            decoration: BoxDecoration(
              // color: Colors.blue.withOpacity(0.5),
              // borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Embulances(),));
                    },
                    child: Column(
                                  children: [
                    Image.asset("assets/icons/ambulance.gif"),
                    Text("Ambulances", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                  ),
            
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Covid(),));
                  },
                  child: Column(
                  children: [
                    Image.asset("assets/icons/virus.gif"),
                    Text("Covid-19",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                  ],),
                ),
            
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>AllHospitals()));
                  },
                  child: Column(
                    children: [
                    Image.asset("assets/icons/hospital.gif"),
                      Text("Hospitals",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                  ],),
                ),
            
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>MedicineP()));
                  },
                  child: Column(
                    children: [
                    Image.asset("assets/icons/medicine.gif"),
                    Text("Medicines",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                  ],),
                ),
              ],),
          ),

          SizedBox(height: 20,),

          /// Text of GridView
           Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Top Rated Doctors", style: myStyle(25, primaryColor, FontWeight.bold),),
            Text("See all", style: myStyle(18, Colors.black,),
            ),
          ],
        ),

        SizedBox( height: 20,),

        /// Doctor GridView
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: allDocs.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 0.6),

          itemBuilder: (context, index) {
            return InkWell(onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (builder) => DocDetails(doctorModel: allDocs[index],)));
            },

              child: Card(
                elevation: 4,
                child: Container(
                  color: Colors.blue.withOpacity(0.2),
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                  children: [
                    Hero(
                      tag:'${allDocs[index].imgUrl}',
                      child: CircleAvatar(backgroundColor: Colors.blue,
                      maxRadius: 50,
                      backgroundImage: AssetImage("${allDocs[index].imgUrl}"),),
                    ),
                    SizedBox(height: 15,),
                    Text("${allDocs[index].name}", style: myStyle(22, Colors.black, FontWeight.bold), textAlign: TextAlign.center,),
                    Text("${allDocs[index].speciality}", style: myStyle(16, Colors.black,), textAlign: TextAlign.center,),


                    SizedBox(height: 15,),
                    Container(
                        height: 40,
                        width: 70,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),

                        child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                      Icon(Icons.star, size: 20, color: Colors.yellow,),
                      Text("${allDocs[index].rating}", style: TextStyle(fontWeight: FontWeight.bold),),
                    ],)
                    ),
                  ],
                  ),
                ),
              ),
            );
          },
        ) ],
      ),),
    ), )
    ,
    );
  }
}