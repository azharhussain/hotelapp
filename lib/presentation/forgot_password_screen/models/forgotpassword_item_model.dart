import '../../../core/app_export.dart';/// This class is used in the [forgotpassword_item_widget] screen.
class ForgotpasswordItemModel {ForgotpasswordItemModel({this.viaSMS, this.viaSMS1, this.oneHundredElevenThousandOneHun, this.id, }) { viaSMS = viaSMS  ?? ImageConstant.imgVolume;viaSMS1 = viaSMS1  ?? "via SMS:";oneHundredElevenThousandOneHun = oneHundredElevenThousandOneHun  ?? "+1 111 ******99";id = id  ?? ""; }

String? viaSMS;

String? viaSMS1;

String? oneHundredElevenThousandOneHun;

String? id;

 }
