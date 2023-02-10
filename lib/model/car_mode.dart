import 'package:energy_app/constants/icons.dart';

class CarModel {
  String? image;
  String? consumption;
  String? saved;
  CarModel({
    required this.consumption,
    required this.image,
    required this.saved,
  });
}

List<CarModel> carList = [
  CarModel(consumption: '6,751g', image: IconClass.co2, saved: 'CO2 saved'),
  CarModel(
      consumption: '8.72kWh', image: IconClass.devices, saved: 'Energy saved'),
  CarModel(
      consumption: '660pts', image: IconClass.equipment, saved: 'Equipement'),
  CarModel(
      consumption: '80pts', image: IconClass.bike, saved: 'Last Equipm...'),
];
