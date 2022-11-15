import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_image_bloc.freezed.dart';
part 'view_image_event.dart';
part 'view_image_state.dart';

class ViewImageBloc extends Bloc<ViewImageEvent, ViewImageState> {
  ViewImageBloc() : super(ViewImageState.initial()) {
    on<AcceptTerms>(_onAcceptTerms);
    on<DeclineTerms>(_onDeclineTerms);
    on<DeniedPermissionsEvent>(_onDeniedPermissions);
  }

  _onAcceptTerms(AcceptTerms event, Emitter emit) {
    emit(const ViewImageState.accepted());
  }

  _onDeclineTerms(DeclineTerms event, Emitter emit) {
    emit(const ViewImageState.declined());
  }

  _onDeniedPermissions(DeniedPermissionsEvent event, Emitter emit) {
    emit(const ViewImageState.denied());
  }
}
