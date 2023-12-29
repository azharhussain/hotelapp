// ignore_for_file: must_be_immutable

part of 'gallery_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Gallery widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GalleryEvent extends Equatable {}

/// Event that is dispatched when the Gallery widget is first created.
class GalleryInitialEvent extends GalleryEvent {
  @override
  List<Object?> get props => [];
}
