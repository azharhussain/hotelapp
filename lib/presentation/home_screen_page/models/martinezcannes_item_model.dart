import '../../../core/app_export.dart';/// This class is used in the [martinezcannes_item_widget] screen.
class MartinezcannesItemModel {MartinezcannesItemModel({this.martinezCannes, this.presidentHotel, this.parisFrance, this.fortyEight, this.reviews, this.price, this.night, this.id, }) { martinezCannes = martinezCannes  ?? ImageConstant.imgRectangle4;presidentHotel = presidentHotel  ?? "Martinez Cannes";parisFrance = parisFrance  ?? "Paris, France";fortyEight = fortyEight  ?? "4.8";reviews = reviews  ?? "(4,378 reviews)";price = price  ?? "32";night = night  ?? "/ night";id = id  ?? ""; }

String? martinezCannes;

String? presidentHotel;

String? parisFrance;

String? fortyEight;

String? reviews;

String? price;

String? night;

String? id;

 }
