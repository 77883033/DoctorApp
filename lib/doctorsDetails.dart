
import 'package:flutter/material.dart';
import 'package:grid/modelClass/models.dart';
import 'package:grid/strings/docStrings.dart';

class DocDetails extends StatelessWidget {
  DoctorModel doctorModel;

  DocDetails({super.key, required this.doctorModel});

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
        centerTitle: true,
        actions: [Icon(Icons.more_vert_outlined)],),

      body: SingleChildScrollView(
        child: Container(
        color: Colors.blue.withOpacity(0.5), width: double.infinity,
        child: Column(
          children: [
          Hero(
            tag: '${doctorModel.imgUrl}',
              child: Image(image: AssetImage("${doctorModel.imgUrl}"))),

          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              color: Colors.white,),
              child: Padding(padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("${doctorModel.name}",style: myStyle(20, Colors.black, FontWeight.bold),),
                    Text("${doctorModel.speciality}", style: myStyle(18, Colors.black),),
                  ],),
                  Text("\$ ${doctorModel.payment}", style: myStyle(18, secondaryColor, FontWeight.bold),)
                ]
                  ),

                  SizedBox(height: 18,),

                  Text("About Doctor", style: myStyle(20, primaryColor, FontWeight.bold),),
                  Text("${doctorModel.aboutDoc}", style: myStyle(17, Colors.black),),

                  SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                      elevation: 4,
                        child: Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),

                       child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text("Patients"),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                        Icon(Icons.person, size: 22, color: primaryColor,),
                        Text("${doctorModel.patient}", style: myStyle(18, primaryColor, FontWeight.bold),),
                      ],),
                    ],),
                    ),),

                      Card(elevation: 4,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width * 0.25,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Experince"),
                              Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.shopping_bag, size: 22, color: primaryColor,),
                                  Text("${doctorModel.experience}",style: myStyle(18, primaryColor, FontWeight.bold),),
                                ],
                              ),
                            ],
                          ),),
                      ),
                      Card(
                        elevation: 4,
                        child: Container(
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),),
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text("Rating"),
                            Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("${doctorModel.rating}", style: myStyle(18, primaryColor, FontWeight.bold),),
                          ],
                        ),

                      ],
                      ),),
                      ),
                    ],
                  ),

                  SizedBox(height: 25,),

                  Text("Available Time", style: myStyle(20, primaryColor, FontWeight.bold),),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 95,
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: doctorModel.appointmentDays.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Card(elevation: 4,
                            child: Container(height: 40,
                              width: MediaQuery.of(context).size.width * 0.27,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),),
                              child: Padding(padding: const EdgeInsets.all(6.0),
                              child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                 Text("${doctorModel.appointmentDays[index]}", style: myStyle(17, Colors.black, FontWeight.bold),),
                                 Text("${doctorModel.appointmentTimes[index]}", style: myStyle(17, primaryColor, FontWeight.bold),
                                    ),
                                  ],
                                ),),
                            ),);
                        }),),

                  SizedBox(height: 30,),

                  Center(
                    child: MaterialButton(
                    color: primaryColor,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                    height: MediaQuery.of(context).size.height * 0.08,
                    minWidth: MediaQuery.of(context).size.width * 0.8,
                    onPressed: () {},
                    child: Text("Make an Appointment",style: myStyle(22, Colors.white, FontWeight.bold),),
                  ),)
                ],),
            ),)
        ],),
      ),),
    );
  }
}