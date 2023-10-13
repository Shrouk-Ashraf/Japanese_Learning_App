
class ItemModel{
  final String sound;
  final String? itemImage;
  final String japaneseName;
  final String englishName;

  const ItemModel({this.itemImage,required this.sound,
              required this.japaneseName, required this.englishName});
}