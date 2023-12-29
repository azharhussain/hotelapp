import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hotelapp/presentation/edit_profile_screen/models/edit_profile_model.dart';import 'package:hotelapp/data/models/me/get_me_resp.dart';import 'dart:async';import 'package:hotelapp/data/repository/repository.dart';import 'package:fluttertoast/fluttertoast.dart';part 'edit_profile_event.dart';part 'edit_profile_state.dart';/// A bloc that manages the state of a EditProfile according to the event that is dispatched to it.
class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {EditProfileBloc(EditProfileState initialState) : super(initialState) { on<EditProfileInitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); on<ChangeDropDown1Event>(_changeDropDown1);on<FetchMeEvent>(_callFetchMe); }

final _repository = Repository();

var getMeResp = GetMeResp();

_changeDropDown(ChangeDropDownEvent event, Emitter<EditProfileState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
_changeDropDown1(ChangeDropDown1Event event, Emitter<EditProfileState> emit, ) { emit(state.copyWith(selectedDropDownValue1: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
List<SelectionPopupModel> fillDropdownItemList1() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
/// Calls the https://nodedemo.dhiwise.co/device/api/v1/user/me API and triggers a [FetchMeEvent] event on the [EditProfileBloc] bloc.
///
/// The [BuildContext] parameter represents current [BuildContext]
_onInitialize(EditProfileInitialEvent event, Emitter<EditProfileState> emit, ) async  { emit(state.copyWith(editProfileLabel1Controller: TextEditingController(), editProfileLabel2Controller: TextEditingController(), editProfileDateController: TextEditingController(), editProfileEmailController: TextEditingController(), editProfileFolderController: TextEditingController())); emit(state.copyWith(editProfileModelObj: state.editProfileModelObj?.copyWith(dropdownItemList: fillDropdownItemList(), dropdownItemList1: fillDropdownItemList1())));
add(FetchMeEvent(onFetchMeEventError: () {

_onFetchMeEventError();
},),);
 } 
/// Calls [https://nodedemo.dhiwise.co/device/api/v1/user/me] with the provided event and emits the state.
///
/// The [FetchMeEvent] parameter is used for handling event data
/// The [emit] parameter is used for emitting the state
///
/// Throws an error if an error occurs during the API call process.
FutureOr<void> _callFetchMe(FetchMeEvent event, Emitter<EditProfileState> emit, ) async  { await _repository.fetchMe(
headers: {'Content-type': 'application/json','Authorization': 'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3ODc3NjY2OX0.16TzzeJMkGbsT-hk-wigjBt4xeJNcwNzVvnl05evYUk',},
)
.then((value) async {

	getMeResp = value;
_onFetchMeSuccess(value,emit);
})
.onError((error,stackTrace) {

	//implement error call
_onFetchMeError();
event.onFetchMeEventError?.call();
})
; } 
void _onFetchMeSuccess(GetMeResp resp, Emitter<EditProfileState> emit, ) { 
emit(state.copyWith(editProfileModelObj: state.editProfileModelObj?.copyWith(),editProfileLabel2Controller : TextEditingController(text: resp.data!.username! ?? ''),
editProfileEmailController : TextEditingController(text: resp.data!.email! ?? ''),
editProfileLabel1Controller : TextEditingController(text: resp.data!.name! ?? ''),
),); } 
void _onFetchMeError() { 
 //implement error method body...
 } 
/// Displays a toast message using the Fluttertoast library.
void _onFetchMeEventError() { 
Fluttertoast.showToast(msg: getMeResp.message.toString() ?? ''); } 
 }
