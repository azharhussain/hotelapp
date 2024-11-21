import '../../../core/app_export.dart';/// This class is used in the [bookingongoing_item_widget] screen.
class BookingongoingItemModel {BookingongoingItemModel({this.image, this.royalePresident, this.parisFrance, this.id, }) { image = image  ?? ImageConstant.imgRectangle4100x100;royalePresident = royalePresident  ?? "Royale President Hotel";parisFrance = parisFrance  ?? "Paris, France";id = id  ?? ""; }

String? image;

String? royalePresident;

String? parisFrance;

String? id;

 }
