class AssetModel {
  String? image;
  String? title;
  AssetModel({
    required this.image,
    required this.title,
  });
}

List<AssetModel> assetList = [
  AssetModel(
    image: 'assets/icons/car1.svg',
    title: 'Car',
  ),
  AssetModel(
    image: 'assets/icons/bathroom.svg',
    title: 'Bathroom',
  ),
  AssetModel(
    image: 'assets/icons/kitchen.svg',
    title: 'Kitchen',
  ),
  AssetModel(
    image: 'assets/icons/bedroom.svg',
    title: 'Bed Room',
  ),
];
