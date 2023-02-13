class GiftModel {
  String? image;
  String? description;
  String? points;
  GiftModel({
    required this.description,
    required this.image,
    required this.points,
  });
}

List<GiftModel> giftList = [
  GiftModel(
    description: 'Perspiciatis unde omnis iste natus error sitvolu.',
    image: 'assets/images/gift1.png',
    points: '3000 Points',
  ),
  GiftModel(
    description: 'Perspiciatis unde omnis iste natus error sitvolu.',
    image: 'assets/images/gift2.png',
    points: '3000 Points',
  ),
];
