import '../../../core/app_export.dart';/// This class is used in the [hotels_item_widget] screen.
class HotelsItemModel {HotelsItemModel({this.image, this.emeraldaDeHotel, this.parisFrance, this.price, this.perNight, this.id, }) { image = image  ?? ImageConstant.imgRectangle3;emeraldaDeHotel = emeraldaDeHotel  ?? "Emeralda De Hotel";parisFrance = parisFrance  ?? "Paris, France";price = price  ?? "29";perNight = perNight  ?? "/ per night";id = id  ?? ""; }

String? image;

String? emeraldaDeHotel;

String? parisFrance;

String? price;

String? perNight;

String? id;

 }
