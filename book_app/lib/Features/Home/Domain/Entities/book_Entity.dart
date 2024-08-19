

 import 'package:hive/hive.dart';
part 'book_Entity.g.dart';
@HiveType(typeId:0)
class BookEntity {
 @HiveField(0)
  final String bookId;  //لازم انشا ادابتر للاوبجيكت بدي حزنو
  @HiveField(1)                        //بدي اعمل كاش او تخزين للبوك انتيتي اوبجيكت
  final String ?image;
@HiveField(2)
  final String title;
@HiveField(3)
  final String ?authorName;
@HiveField(4)
  final num ?price;
@HiveField(5)
  final num? rating;

  BookEntity({required this.bookId, 
      required this.image,
      required this.title,
      required this.authorName,
      required this.price,
      required this.rating,});
}
