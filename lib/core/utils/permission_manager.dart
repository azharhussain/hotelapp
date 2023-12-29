import 'package:permission_handler/permission_handler.dart';class PermissionManager {/// Returns a [Future] that completes with a [bool] value indicating whether
/// the permission is granted or not. Returns `false` if the [permission]
/// is denied or restricted.
static Future<bool> isPermissionGranted(Permission permission) async  { return !(await permission.status.isDenied || await permission.status.isRestricted); } 
/// Requests a specified [permission] if it has not already been granted.
/// This method should be called before using any functionality that requires a permission.
///
/// Throws a [PermissionException] if the permission is not granted and the
/// user declines the permission request.
static Future<void> askForPermission(Permission permission) async  { if(!await isPermissionGranted(permission)) {
await permission.request();
} } 
 }
