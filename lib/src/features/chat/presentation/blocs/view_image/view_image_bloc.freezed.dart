// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'view_image_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViewImageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() accept,
    required TResult Function() decline,
    required TResult Function() denied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? accept,
    TResult? Function()? decline,
    TResult? Function()? denied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? accept,
    TResult Function()? decline,
    TResult Function()? denied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptTerms value) accept,
    required TResult Function(DeclineTerms value) decline,
    required TResult Function(DeniedPermissionsEvent value) denied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptTerms value)? accept,
    TResult? Function(DeclineTerms value)? decline,
    TResult? Function(DeniedPermissionsEvent value)? denied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptTerms value)? accept,
    TResult Function(DeclineTerms value)? decline,
    TResult Function(DeniedPermissionsEvent value)? denied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewImageEventCopyWith<$Res> {
  factory $ViewImageEventCopyWith(
          ViewImageEvent value, $Res Function(ViewImageEvent) then) =
      _$ViewImageEventCopyWithImpl<$Res, ViewImageEvent>;
}

/// @nodoc
class _$ViewImageEventCopyWithImpl<$Res, $Val extends ViewImageEvent>
    implements $ViewImageEventCopyWith<$Res> {
  _$ViewImageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AcceptTermsCopyWith<$Res> {
  factory _$$AcceptTermsCopyWith(
          _$AcceptTerms value, $Res Function(_$AcceptTerms) then) =
      __$$AcceptTermsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AcceptTermsCopyWithImpl<$Res>
    extends _$ViewImageEventCopyWithImpl<$Res, _$AcceptTerms>
    implements _$$AcceptTermsCopyWith<$Res> {
  __$$AcceptTermsCopyWithImpl(
      _$AcceptTerms _value, $Res Function(_$AcceptTerms) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AcceptTerms implements AcceptTerms {
  const _$AcceptTerms();

  @override
  String toString() {
    return 'ViewImageEvent.accept()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AcceptTerms);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() accept,
    required TResult Function() decline,
    required TResult Function() denied,
  }) {
    return accept();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? accept,
    TResult? Function()? decline,
    TResult? Function()? denied,
  }) {
    return accept?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? accept,
    TResult Function()? decline,
    TResult Function()? denied,
    required TResult orElse(),
  }) {
    if (accept != null) {
      return accept();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptTerms value) accept,
    required TResult Function(DeclineTerms value) decline,
    required TResult Function(DeniedPermissionsEvent value) denied,
  }) {
    return accept(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptTerms value)? accept,
    TResult? Function(DeclineTerms value)? decline,
    TResult? Function(DeniedPermissionsEvent value)? denied,
  }) {
    return accept?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptTerms value)? accept,
    TResult Function(DeclineTerms value)? decline,
    TResult Function(DeniedPermissionsEvent value)? denied,
    required TResult orElse(),
  }) {
    if (accept != null) {
      return accept(this);
    }
    return orElse();
  }
}

abstract class AcceptTerms implements ViewImageEvent {
  const factory AcceptTerms() = _$AcceptTerms;
}

/// @nodoc
abstract class _$$DeclineTermsCopyWith<$Res> {
  factory _$$DeclineTermsCopyWith(
          _$DeclineTerms value, $Res Function(_$DeclineTerms) then) =
      __$$DeclineTermsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeclineTermsCopyWithImpl<$Res>
    extends _$ViewImageEventCopyWithImpl<$Res, _$DeclineTerms>
    implements _$$DeclineTermsCopyWith<$Res> {
  __$$DeclineTermsCopyWithImpl(
      _$DeclineTerms _value, $Res Function(_$DeclineTerms) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeclineTerms implements DeclineTerms {
  const _$DeclineTerms();

  @override
  String toString() {
    return 'ViewImageEvent.decline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeclineTerms);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() accept,
    required TResult Function() decline,
    required TResult Function() denied,
  }) {
    return decline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? accept,
    TResult? Function()? decline,
    TResult? Function()? denied,
  }) {
    return decline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? accept,
    TResult Function()? decline,
    TResult Function()? denied,
    required TResult orElse(),
  }) {
    if (decline != null) {
      return decline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptTerms value) accept,
    required TResult Function(DeclineTerms value) decline,
    required TResult Function(DeniedPermissionsEvent value) denied,
  }) {
    return decline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptTerms value)? accept,
    TResult? Function(DeclineTerms value)? decline,
    TResult? Function(DeniedPermissionsEvent value)? denied,
  }) {
    return decline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptTerms value)? accept,
    TResult Function(DeclineTerms value)? decline,
    TResult Function(DeniedPermissionsEvent value)? denied,
    required TResult orElse(),
  }) {
    if (decline != null) {
      return decline(this);
    }
    return orElse();
  }
}

abstract class DeclineTerms implements ViewImageEvent {
  const factory DeclineTerms() = _$DeclineTerms;
}

/// @nodoc
abstract class _$$DeniedPermissionsEventCopyWith<$Res> {
  factory _$$DeniedPermissionsEventCopyWith(_$DeniedPermissionsEvent value,
          $Res Function(_$DeniedPermissionsEvent) then) =
      __$$DeniedPermissionsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeniedPermissionsEventCopyWithImpl<$Res>
    extends _$ViewImageEventCopyWithImpl<$Res, _$DeniedPermissionsEvent>
    implements _$$DeniedPermissionsEventCopyWith<$Res> {
  __$$DeniedPermissionsEventCopyWithImpl(_$DeniedPermissionsEvent _value,
      $Res Function(_$DeniedPermissionsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeniedPermissionsEvent implements DeniedPermissionsEvent {
  const _$DeniedPermissionsEvent();

  @override
  String toString() {
    return 'ViewImageEvent.denied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeniedPermissionsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() accept,
    required TResult Function() decline,
    required TResult Function() denied,
  }) {
    return denied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? accept,
    TResult? Function()? decline,
    TResult? Function()? denied,
  }) {
    return denied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? accept,
    TResult Function()? decline,
    TResult Function()? denied,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptTerms value) accept,
    required TResult Function(DeclineTerms value) decline,
    required TResult Function(DeniedPermissionsEvent value) denied,
  }) {
    return denied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptTerms value)? accept,
    TResult? Function(DeclineTerms value)? decline,
    TResult? Function(DeniedPermissionsEvent value)? denied,
  }) {
    return denied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptTerms value)? accept,
    TResult Function(DeclineTerms value)? decline,
    TResult Function(DeniedPermissionsEvent value)? denied,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied(this);
    }
    return orElse();
  }
}

abstract class DeniedPermissionsEvent implements ViewImageEvent {
  const factory DeniedPermissionsEvent() = _$DeniedPermissionsEvent;
}

/// @nodoc
mixin _$ViewImageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() accepted,
    required TResult Function() declined,
    required TResult Function() denied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? accepted,
    TResult? Function()? declined,
    TResult? Function()? denied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accepted,
    TResult Function()? declined,
    TResult Function()? denied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialViewImage value) initial,
    required TResult Function(AcceptedViewImage value) accepted,
    required TResult Function(DeclinedViewImage value) declined,
    required TResult Function(DeniedPermissionsState value) denied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialViewImage value)? initial,
    TResult? Function(AcceptedViewImage value)? accepted,
    TResult? Function(DeclinedViewImage value)? declined,
    TResult? Function(DeniedPermissionsState value)? denied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialViewImage value)? initial,
    TResult Function(AcceptedViewImage value)? accepted,
    TResult Function(DeclinedViewImage value)? declined,
    TResult Function(DeniedPermissionsState value)? denied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewImageStateCopyWith<$Res> {
  factory $ViewImageStateCopyWith(
          ViewImageState value, $Res Function(ViewImageState) then) =
      _$ViewImageStateCopyWithImpl<$Res, ViewImageState>;
}

/// @nodoc
class _$ViewImageStateCopyWithImpl<$Res, $Val extends ViewImageState>
    implements $ViewImageStateCopyWith<$Res> {
  _$ViewImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialViewImageCopyWith<$Res> {
  factory _$$InitialViewImageCopyWith(
          _$InitialViewImage value, $Res Function(_$InitialViewImage) then) =
      __$$InitialViewImageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialViewImageCopyWithImpl<$Res>
    extends _$ViewImageStateCopyWithImpl<$Res, _$InitialViewImage>
    implements _$$InitialViewImageCopyWith<$Res> {
  __$$InitialViewImageCopyWithImpl(
      _$InitialViewImage _value, $Res Function(_$InitialViewImage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialViewImage implements InitialViewImage {
  const _$InitialViewImage();

  @override
  String toString() {
    return 'ViewImageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialViewImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() accepted,
    required TResult Function() declined,
    required TResult Function() denied,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? accepted,
    TResult? Function()? declined,
    TResult? Function()? denied,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accepted,
    TResult Function()? declined,
    TResult Function()? denied,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialViewImage value) initial,
    required TResult Function(AcceptedViewImage value) accepted,
    required TResult Function(DeclinedViewImage value) declined,
    required TResult Function(DeniedPermissionsState value) denied,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialViewImage value)? initial,
    TResult? Function(AcceptedViewImage value)? accepted,
    TResult? Function(DeclinedViewImage value)? declined,
    TResult? Function(DeniedPermissionsState value)? denied,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialViewImage value)? initial,
    TResult Function(AcceptedViewImage value)? accepted,
    TResult Function(DeclinedViewImage value)? declined,
    TResult Function(DeniedPermissionsState value)? denied,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialViewImage implements ViewImageState {
  const factory InitialViewImage() = _$InitialViewImage;
}

/// @nodoc
abstract class _$$AcceptedViewImageCopyWith<$Res> {
  factory _$$AcceptedViewImageCopyWith(
          _$AcceptedViewImage value, $Res Function(_$AcceptedViewImage) then) =
      __$$AcceptedViewImageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AcceptedViewImageCopyWithImpl<$Res>
    extends _$ViewImageStateCopyWithImpl<$Res, _$AcceptedViewImage>
    implements _$$AcceptedViewImageCopyWith<$Res> {
  __$$AcceptedViewImageCopyWithImpl(
      _$AcceptedViewImage _value, $Res Function(_$AcceptedViewImage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AcceptedViewImage implements AcceptedViewImage {
  const _$AcceptedViewImage();

  @override
  String toString() {
    return 'ViewImageState.accepted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AcceptedViewImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() accepted,
    required TResult Function() declined,
    required TResult Function() denied,
  }) {
    return accepted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? accepted,
    TResult? Function()? declined,
    TResult? Function()? denied,
  }) {
    return accepted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accepted,
    TResult Function()? declined,
    TResult Function()? denied,
    required TResult orElse(),
  }) {
    if (accepted != null) {
      return accepted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialViewImage value) initial,
    required TResult Function(AcceptedViewImage value) accepted,
    required TResult Function(DeclinedViewImage value) declined,
    required TResult Function(DeniedPermissionsState value) denied,
  }) {
    return accepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialViewImage value)? initial,
    TResult? Function(AcceptedViewImage value)? accepted,
    TResult? Function(DeclinedViewImage value)? declined,
    TResult? Function(DeniedPermissionsState value)? denied,
  }) {
    return accepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialViewImage value)? initial,
    TResult Function(AcceptedViewImage value)? accepted,
    TResult Function(DeclinedViewImage value)? declined,
    TResult Function(DeniedPermissionsState value)? denied,
    required TResult orElse(),
  }) {
    if (accepted != null) {
      return accepted(this);
    }
    return orElse();
  }
}

abstract class AcceptedViewImage implements ViewImageState {
  const factory AcceptedViewImage() = _$AcceptedViewImage;
}

/// @nodoc
abstract class _$$DeclinedViewImageCopyWith<$Res> {
  factory _$$DeclinedViewImageCopyWith(
          _$DeclinedViewImage value, $Res Function(_$DeclinedViewImage) then) =
      __$$DeclinedViewImageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeclinedViewImageCopyWithImpl<$Res>
    extends _$ViewImageStateCopyWithImpl<$Res, _$DeclinedViewImage>
    implements _$$DeclinedViewImageCopyWith<$Res> {
  __$$DeclinedViewImageCopyWithImpl(
      _$DeclinedViewImage _value, $Res Function(_$DeclinedViewImage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeclinedViewImage implements DeclinedViewImage {
  const _$DeclinedViewImage();

  @override
  String toString() {
    return 'ViewImageState.declined()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeclinedViewImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() accepted,
    required TResult Function() declined,
    required TResult Function() denied,
  }) {
    return declined();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? accepted,
    TResult? Function()? declined,
    TResult? Function()? denied,
  }) {
    return declined?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accepted,
    TResult Function()? declined,
    TResult Function()? denied,
    required TResult orElse(),
  }) {
    if (declined != null) {
      return declined();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialViewImage value) initial,
    required TResult Function(AcceptedViewImage value) accepted,
    required TResult Function(DeclinedViewImage value) declined,
    required TResult Function(DeniedPermissionsState value) denied,
  }) {
    return declined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialViewImage value)? initial,
    TResult? Function(AcceptedViewImage value)? accepted,
    TResult? Function(DeclinedViewImage value)? declined,
    TResult? Function(DeniedPermissionsState value)? denied,
  }) {
    return declined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialViewImage value)? initial,
    TResult Function(AcceptedViewImage value)? accepted,
    TResult Function(DeclinedViewImage value)? declined,
    TResult Function(DeniedPermissionsState value)? denied,
    required TResult orElse(),
  }) {
    if (declined != null) {
      return declined(this);
    }
    return orElse();
  }
}

abstract class DeclinedViewImage implements ViewImageState {
  const factory DeclinedViewImage() = _$DeclinedViewImage;
}

/// @nodoc
abstract class _$$DeniedPermissionsStateCopyWith<$Res> {
  factory _$$DeniedPermissionsStateCopyWith(_$DeniedPermissionsState value,
          $Res Function(_$DeniedPermissionsState) then) =
      __$$DeniedPermissionsStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeniedPermissionsStateCopyWithImpl<$Res>
    extends _$ViewImageStateCopyWithImpl<$Res, _$DeniedPermissionsState>
    implements _$$DeniedPermissionsStateCopyWith<$Res> {
  __$$DeniedPermissionsStateCopyWithImpl(_$DeniedPermissionsState _value,
      $Res Function(_$DeniedPermissionsState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeniedPermissionsState implements DeniedPermissionsState {
  const _$DeniedPermissionsState();

  @override
  String toString() {
    return 'ViewImageState.denied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeniedPermissionsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() accepted,
    required TResult Function() declined,
    required TResult Function() denied,
  }) {
    return denied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? accepted,
    TResult? Function()? declined,
    TResult? Function()? denied,
  }) {
    return denied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? accepted,
    TResult Function()? declined,
    TResult Function()? denied,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialViewImage value) initial,
    required TResult Function(AcceptedViewImage value) accepted,
    required TResult Function(DeclinedViewImage value) declined,
    required TResult Function(DeniedPermissionsState value) denied,
  }) {
    return denied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialViewImage value)? initial,
    TResult? Function(AcceptedViewImage value)? accepted,
    TResult? Function(DeclinedViewImage value)? declined,
    TResult? Function(DeniedPermissionsState value)? denied,
  }) {
    return denied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialViewImage value)? initial,
    TResult Function(AcceptedViewImage value)? accepted,
    TResult Function(DeclinedViewImage value)? declined,
    TResult Function(DeniedPermissionsState value)? denied,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied(this);
    }
    return orElse();
  }
}

abstract class DeniedPermissionsState implements ViewImageState {
  const factory DeniedPermissionsState() = _$DeniedPermissionsState;
}
