import '../../../core/app_export.dart';/// This class is used in the [searchpage_item_widget] screen.
class SearchpageItemModel {SearchpageItemModel({this.presidentHotel, this.presidentHotel1, this.parisFrance, this.fortyEight, this.reviews, this.price, this.night, this.id, }) { presidentHotel = presidentHotel  ?? ImageConstant.imgRectangle4100x100;presidentHotel1 = presidentHotel1  ?? "President Hotel";parisFrance = parisFrance  ?? "Paris, France";fortyEight = fortyEight  ?? "4.8";reviews = reviews  ?? "(4,378 reviews)";price = price  ?? "35";night = night  ?? "/ night";id = id  ?? ""; }

String? presidentHotel;

String? presidentHotel1;

String? parisFrance;

String? fortyEight;

String? reviews;

String? price;

String? night;

String? id;

 }
