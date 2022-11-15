part of 'view_image_bloc.dart';

@freezed
class ViewImageState with _$ViewImageState {
  const factory ViewImageState.initial() = InitialViewImage;
  const factory ViewImageState.accepted() = AcceptedViewImage;
  const factory ViewImageState.declined() = DeclinedViewImage;
  const factory ViewImageState.denied() = DeniedPermissionsState;
}