part of 'view_image_bloc.dart';

@freezed
class ViewImageEvent with _$ViewImageEvent {
  const factory ViewImageEvent.accept() = AcceptTerms;

  const factory ViewImageEvent.decline() = DeclineTerms;

  const factory ViewImageEvent.denied() = DeniedPermissionsEvent;
}
