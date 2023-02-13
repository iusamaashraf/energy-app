import 'package:energy_app/constants/icons.dart';

class SmartModel {
  String? image;
  String? name;
  SmartModel({
    required this.image,
    required this.name,
  });
}

List<SmartModel> smartList = [
  SmartModel(
    image: IconClass.computer,
    name: 'Computer',
  ),
  SmartModel(
    image: IconClass.mobile,
    name: 'Mobile',
  ),
  SmartModel(
    image: IconClass.teslaIcon,
    name: 'Tesla Model X Car',
  ),
];
