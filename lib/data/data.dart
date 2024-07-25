import 'package:grid/modelClass/models.dart';

List<DoctorModel> allDocs = [
  DoctorModel(
      name: 'Dr,Peter Quili',
      imgUrl: 'assets/images/doctor1.png',
      speciality: 'Heart Disease Specialist ',
      rating: 4.7,
      payment: 50,
      patient: 1200,
      experience: 10,
      appointmentDays: ['Sat', 'Sun', 'Wed'],
      appointmentTimes: ['3-4 pm', '2-3 pm', '8-9 pm'],
      aboutDoc: 'Dr,Peter Quili is heart specialist in BSMMU hospital, Dhaka, Bangladesh. He has 10 years of experience in this field for serving people.'),

  DoctorModel(
      name: 'Dr,Daniel Defo',
      imgUrl: 'assets/images/doctor2.png',
      speciality: 'Kidney Disease Specialist ',
      rating: 4.5,
      payment: 50,
      patient: 1200,
      experience: 10,
      appointmentDays: ['Sat', 'Sun', 'Wed'],
      appointmentTimes: ['3-4 pm', '2-3 pm', '8-9 pm'],
      aboutDoc: 'Dr,daniel is kidney specialist in BmE hospital, Dhaka, Bangladesh. He has 10 years of experience in this field for serving people. '),

  DoctorModel(
      name: 'Dr,Mary',
      imgUrl: 'assets/images/doctor3.png',
      speciality: 'skin Disease Specialist ',
      rating: 4.5,
      payment: 50,
      patient: 1100,
      experience: 7,
      appointmentDays: ['Sat', 'Mon', 'Wed'],
      appointmentTimes: ['3-5 pm', '2-3 pm', '8-9 pm'],
      aboutDoc: 'Dr,daniel is Skin specialist in BmE hospital, Dhaka, Bangladesh. He has 10 years of experience in this field for serving people. '),

  DoctorModel(
      name: 'Dr,Mary',
      imgUrl: 'assets/images/doctor4.png',
      speciality: 'cancer  Specialist ',
      rating: 4.9,
      payment: 89,
      patient: 1100,
      experience: 7,
      appointmentDays: ['Sat', 'Mon', 'Wed'],
      appointmentTimes: ['3-5 pm', '2-3 pm', '8-9 pm'],
      aboutDoc: 'Dr,Mary is cancere specialist in BmE hospital, Dhaka, Bangladesh. He has 10 years of experience in this field for serving people. '),

  DoctorModel(
      name: 'Dr,Jerry',
      imgUrl: 'assets/images/doctor5.png',
      speciality: 'Bone Disease Specialist ',
      rating: 4.5,
      payment: 50,
      patient: 1100,
      experience: 7,
      appointmentDays: ['Sat', 'Mon', 'Wed'],
      appointmentTimes: ['3-5 pm', '2-3 pm', '8-9 pm'],
      aboutDoc: 'Dr,Jerry is Bone specialist in BmE hospital, Dhaka, Bangladesh. He has 10 years of experience in this field for serving people. '),


  DoctorModel(
      name: 'Dr,Lili',
      imgUrl: 'assets/images/female_doc.png',
      speciality: 'liver Disease Specialist ',
      rating: 4.9,
      payment: 50,
      patient: 100,
      experience: 9,
      appointmentDays: ['Sat', 'Mon', 'Wed'],
      appointmentTimes: ['3-5 pm', '2-3 pm', '8-9 pm'],
      aboutDoc: 'Dr,Lili is Liver specialist in BmE hospital, Dhaka, Bangladesh. He has 10 years of experience in this field for serving people. '),

  DoctorModel(
      name: 'Dr,Jenny',
      imgUrl: 'assets/images/female_doc2.png',
      speciality: 'virus Disease Specialist ',
      rating: 4.2,
      payment: 18,
      patient: 1100,
      experience: 7,
      appointmentDays: ['Sat', 'Mon', 'Wed'],
      appointmentTimes: ['3-5 pm', '2-3 pm', '8-9 pm'],
      aboutDoc: 'Dr,Jenny is virus specialist in BmE hospital, Dhaka, Bangladesh. He has 10 years of experience in this field for serving people. '),

  DoctorModel(
      name: 'Dr,Rosey',
      imgUrl: 'assets/images/female_doc3.png',
      speciality: 'TB Disease Specialist ',
      rating: 5,
      payment: 180,
      patient: 1400,
      experience: 11,
      appointmentDays: ['Sat', 'Mon', 'Wed'],
      appointmentTimes: ['3-5 pm', '2-3 pm', '8-9 pm'],
      aboutDoc: 'Dr,Rosey is virus specialist in BmE hospital, Dhaka, Bangladesh. He has 10 years of experience in this field for serving people. '),
];


List<HosModel> allHOS = [
  HosModel(
      Name: 'Mongar Regional Referral Hospital',
      Place: 'Mongar',
      Est: '2012',
      Location: 'assets/images/monLocation.png',
      aboutUs: 'Mongar Regional Referral Hospital (MRRH) is the tertiary multi-specialty healthcare institution in eastern Bhutan. It also serves as regional referral hospital for the eastern region, district hospital for Mongar dzongkhag, technical backup center for the hospitals in east.',
      url: 'assets/images/MongarHos.jpg'),

  HosModel(
      Name:'Jigme Dorji National Hospital',
      Place: 'Thimphu',
      Est: '1995',
      Location: 'assets/images/thimLocation.png',
      aboutUs: 'Jigme Dorji Wangchuck National Referral Hospital (JDWNRH) not only act as a hub to treat ailments but it is also a center for producing competent healthcare professionals who will be able to serve throughout the country. ',
      url: 'assets/images/thimphuhos.jpg'),

  HosModel(
      Name: 'Paro Regional Referred Hospital',
      Place: 'Paro',
      Est: '2001',
      Location: 'assets/images/paroLoc.jpg',
      aboutUs: 'Paro Referral Hospital not only act as a hub to treat ailments but it is also a center for producing competent healthcare professionals who will be able to serve throughout the country. ',
      url: 'assets/images/parohos.jpg'),
  HosModel(
      Name: 'Phuentsholing General  Hospital',
      Place: 'Phuntsholing',
      Est: '1988',
      Location: 'assets/images/plingLoc.png',
      aboutUs: 'Phuentsholing General Referral Hospital not only act as a hub to treat ailments but it is also a center for producing competent healthcare professionals who will be able to serve throughout the country.',
      url: 'assets/images/plinghos.jpg')
];

List<ShopModel> allShop = [
  ShopModel(Name: 'Namsey Medical', Location: 'Phuntsholing', Review: '4.4', link: 'assets/images/shop1.jpg'),
  ShopModel(Name: 'karma Pharmacy', Location: 'Thimphu', Review: "4.9", link: 'assets/images/shop2.jpg'),
  ShopModel(Name: 'Sangay Madical', Location: 'Thimphu', Review: "4.8", link: 'assets/images/shop3.jpg'),
  ShopModel(Name: 'Druk Pharmacy', Location: 'Thimphu', Review: '4.5', link: 'assets/images/shop4.jpg'),

];

List<List> allMed = [
  [
    Medicine(Name: 'Aceclofenac', Weight: '1.5mg', Price: 299, img: 'assets/images/med19.jpg', shop: 'Namsey Medical Shop'),
    Medicine(Name: 'Sukindac', Weight: '1.5mg', Price: 299, img: 'assets/images/med12.jpg', shop: 'Namsey Medical Shop'),
    Medicine(Name: 'Nimesulide', Weight: '4.6mg', Price: 299, img: 'assets/images/med5.jpg', shop: 'Sangay Medical'),
    Medicine(Name: 'Dicofenac', Weight: '1.5mg', Price: 299, img: 'assets/images/med17.jpg', shop: 'Namsey Medical Shop'),
    Medicine(Name: 'Naproxen', Weight: '1.5mg', Price: 299, img: 'assets/images/med11.jpg', shop: 'Namsey Medical Shop'),
  ],
  [
    Medicine(Name: 'Ibuprofen', Weight: '5.2mg', Price: 890, img: 'assets/images/med11.jpg', shop: 'Karma Pharmacy'),
    Medicine(Name: 'Ketoprofen', Weight: '2.58mg', Price: 230, img: 'assets/images/med10.jpg', shop: 'Karma Pharmacy'),
    Medicine(Name: 'Sukindac', Weight: '1.5mg', Price: 299, img: 'assets/images/med18.jpg', shop: 'Namsey Medical Shop'),
    Medicine(Name: 'Aceclofenac', Weight: '1.5mg', Price: 299, img: 'assets/images/med19.jpg', shop: 'Namsey Medical Shop'),
    Medicine(Name: 'Ketoprofen', Weight: '2.58mg', Price: 230, img: 'assets/images/med12.jpg', shop: 'Karma Pharmacy'),
    Medicine(Name: 'Celecoxib', Weight: '1.5mg', Price: 99, img: 'assets/images/med14.jpg', shop: 'Karma Pharmacy'),
    Medicine(Name: 'Indomatacin', Weight: '8.2mg', Price: 259, img: 'assets/images/med7.jpg', shop: 'Karma Pharmacy'),
    Medicine(Name: 'Indomatacin', Weight: '8.2mg', Price: 259, img: 'assets/images/med17.jpg', shop: 'Karma Pharmacy'),

  ],
  [
    Medicine(Name: 'Nimesulide', Weight: '4.6mg', Price: 299, img: 'assets/images/med5.jpg', shop: 'Sangay Medical'),
    Medicine(Name: 'Prioxian', Weight: '7.5mg', Price: 540, img: 'assets/images/med4.jpg', shop: 'Sangay Medical'),
    Medicine(Name: 'Dicofenac', Weight: '1.5mg', Price: 299, img: 'assets/images/med17.jpg', shop: 'Namsey Medical Shop'),
    Medicine(Name: 'Ketoprofen', Weight: '2.58mg', Price: 230, img: 'assets/images/med12.jpg', shop: 'Karma Pharmacy'),
    Medicine(Name: 'Indomatacin', Weight: '8.2mg', Price: 259, img: 'assets/images/med7.jpg', shop: 'Sangay Medical'),
    Medicine(Name: 'Tai Acid', Weight: '1.5mg', Price: 299, img: 'assets/images/med11.jpg', shop: 'Sangay Medical'),
    Medicine(Name: 'Ibuprofen', Weight: '5.2mg', Price: 890, img: 'assets/images/med18.jpg', shop: 'Karma Pharmacy'),

  ],
  [
    Medicine(Name: 'EtroCoxib', Weight: '3.5mg', Price: 760, img: 'assets/images/med7.jpg', shop: 'Sangay Medical'),
    Medicine(Name: 'Proxicam', Weight: '1.9mg', Price: 540, img: 'assets/images/med16.jpg', shop: 'Sangay Medical'),
    Medicine(Name: 'Dicofenac', Weight: '2.5mg', Price: 120, img: 'assets/images/med19.jpg', shop: 'Sangay Medical'),
    Medicine(Name: 'Aceclofenac', Weight: '1.5mg', Price: 299, img: 'assets/images/med18.jpg', shop: 'Namsey Medical Shop'),
    Medicine(Name: 'Celecoxib', Weight: '1.5mg', Price: 99, img: 'assets/images/med14.jpg', shop: 'Karma Pharmacy'),
    Medicine(Name: 'Celecoxib', Weight: '1.5mg', Price: 99, img: 'assets/images/med13.jpg', shop: 'Karma Pharmacy'),
    Medicine(Name: 'Naproxen', Weight: '1.5mg', Price: 110, img: 'assets/images/med4.jpg', shop: 'Sangay Medical'),
  ],

];