

import 'dart:ffi';

class DoctorModel {
  String name;
  String imgUrl;
  String speciality;
  double rating;
  double payment;
  int patient;
  int experience;
  List appointmentDays;
  List appointmentTimes;
  String aboutDoc;

  DoctorModel({
    required this.name,
    required this.imgUrl,
    required this.speciality,
    required this.rating,
    required this.payment,
    required this.patient,
    required this.experience,
    required this.appointmentDays,
    required this.appointmentTimes,
    required this.aboutDoc,
  });
}



class HosModel {
  String Name;
  String Place;
  String Est;
  String Location;
  String aboutUs;
  String url;


  HosModel({
    required this.Name,
    required this.Place,
    required this.Est,
    required this.Location,
    required this.aboutUs,
    required this.url
});
}

class ShopModel {
  String Name;
  String Location;
  String Review;
  String link;

  ShopModel({
    required this.Name,
    required this.Location,
    required this.Review,
    required this.link,
});
}

class Medicine{
  String Name;
  String Weight;
  double Price;
  String img;
  String shop;

  Medicine({
    required this.Name,
    required this.Weight,
    required this.Price,
    required this.img,
    required this.shop,

});
}