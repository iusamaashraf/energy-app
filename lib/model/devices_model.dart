import 'package:energy_app/constants/icons.dart';

class DevicesModel {
  String? iamge;
  String? title;
  String? points;
  String? co2;
  String? energy;
  DevicesModel({
    required this.iamge,
    required this.title,
    required this.points,
    required this.co2,
    required this.energy,
  });
}

List<DevicesModel> devicesList = [
  DevicesModel(
    iamge: IconClass.airConditioned,
    title: 'Air Conditioner',
    points: '29',
    co2: '37.9g',
    energy: '53.13Wh',
  ),
  DevicesModel(
    iamge: IconClass.dishWasher,
    title: 'Dishwasher',
    points: '29',
    co2: '37.9g',
    energy: '53.13Wh',
  ),
  DevicesModel(
    iamge: IconClass.dishWasher,
    title: 'Dishwasher',
    points: '29',
    co2: '37.9g',
    energy: '53.13Wh',
  ),
];
