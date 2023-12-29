// ignore_for_file: must_be_immutable

part of 'my_bookmarks_bloc.dart';

/// Represents the state of MyBookmarks in the application.
class MyBookmarksState extends Equatable {
  MyBookmarksState({this.myBookmarksModelObj});

  MyBookmarksModel? myBookmarksModelObj;

  @override
  List<Object?> get props => [
        myBookmarksModelObj,
      ];
  MyBookmarksState copyWith({MyBookmarksModel? myBookmarksModelObj}) {
    return MyBookmarksState(
      myBookmarksModelObj: myBookmarksModelObj ?? this.myBookmarksModelObj,
    );
  }
}
