// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavouritesEventTearOff {
  const _$FavouritesEventTearOff();

  OnLoad onLoad() {
    return const OnLoad();
  }

  OnError onError() {
    return const OnError();
  }

  ToFirstPage toFirstPage() {
    return const ToFirstPage();
  }
}

/// @nodoc
const $FavouritesEvent = _$FavouritesEventTearOff();

/// @nodoc
mixin _$FavouritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onError,
    required TResult Function() toFirstPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onError,
    TResult Function()? toFirstPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnError value) onError,
    required TResult Function(ToFirstPage value) toFirstPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnError value)? onError,
    TResult Function(ToFirstPage value)? toFirstPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesEventCopyWith<$Res> {
  factory $FavouritesEventCopyWith(
          FavouritesEvent value, $Res Function(FavouritesEvent) then) =
      _$FavouritesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavouritesEventCopyWithImpl<$Res>
    implements $FavouritesEventCopyWith<$Res> {
  _$FavouritesEventCopyWithImpl(this._value, this._then);

  final FavouritesEvent _value;
  // ignore: unused_field
  final $Res Function(FavouritesEvent) _then;
}

/// @nodoc
abstract class $OnLoadCopyWith<$Res> {
  factory $OnLoadCopyWith(OnLoad value, $Res Function(OnLoad) then) =
      _$OnLoadCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnLoadCopyWithImpl<$Res> extends _$FavouritesEventCopyWithImpl<$Res>
    implements $OnLoadCopyWith<$Res> {
  _$OnLoadCopyWithImpl(OnLoad _value, $Res Function(OnLoad) _then)
      : super(_value, (v) => _then(v as OnLoad));

  @override
  OnLoad get _value => super._value as OnLoad;
}

/// @nodoc

class _$OnLoad with DiagnosticableTreeMixin implements OnLoad {
  const _$OnLoad();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavouritesEvent.onLoad()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'FavouritesEvent.onLoad'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onError,
    required TResult Function() toFirstPage,
  }) {
    return onLoad();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onError,
    TResult Function()? toFirstPage,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnError value) onError,
    required TResult Function(ToFirstPage value) toFirstPage,
  }) {
    return onLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnError value)? onError,
    TResult Function(ToFirstPage value)? toFirstPage,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad(this);
    }
    return orElse();
  }
}

abstract class OnLoad implements FavouritesEvent {
  const factory OnLoad() = _$OnLoad;
}

/// @nodoc
abstract class $OnErrorCopyWith<$Res> {
  factory $OnErrorCopyWith(OnError value, $Res Function(OnError) then) =
      _$OnErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnErrorCopyWithImpl<$Res> extends _$FavouritesEventCopyWithImpl<$Res>
    implements $OnErrorCopyWith<$Res> {
  _$OnErrorCopyWithImpl(OnError _value, $Res Function(OnError) _then)
      : super(_value, (v) => _then(v as OnError));

  @override
  OnError get _value => super._value as OnError;
}

/// @nodoc

class _$OnError with DiagnosticableTreeMixin implements OnError {
  const _$OnError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavouritesEvent.onError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'FavouritesEvent.onError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onError,
    required TResult Function() toFirstPage,
  }) {
    return onError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onError,
    TResult Function()? toFirstPage,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnError value) onError,
    required TResult Function(ToFirstPage value) toFirstPage,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnError value)? onError,
    TResult Function(ToFirstPage value)? toFirstPage,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class OnError implements FavouritesEvent {
  const factory OnError() = _$OnError;
}

/// @nodoc
abstract class $ToFirstPageCopyWith<$Res> {
  factory $ToFirstPageCopyWith(
          ToFirstPage value, $Res Function(ToFirstPage) then) =
      _$ToFirstPageCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToFirstPageCopyWithImpl<$Res>
    extends _$FavouritesEventCopyWithImpl<$Res>
    implements $ToFirstPageCopyWith<$Res> {
  _$ToFirstPageCopyWithImpl(
      ToFirstPage _value, $Res Function(ToFirstPage) _then)
      : super(_value, (v) => _then(v as ToFirstPage));

  @override
  ToFirstPage get _value => super._value as ToFirstPage;
}

/// @nodoc

class _$ToFirstPage with DiagnosticableTreeMixin implements ToFirstPage {
  const _$ToFirstPage();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavouritesEvent.toFirstPage()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'FavouritesEvent.toFirstPage'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ToFirstPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onError,
    required TResult Function() toFirstPage,
  }) {
    return toFirstPage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onError,
    TResult Function()? toFirstPage,
    required TResult orElse(),
  }) {
    if (toFirstPage != null) {
      return toFirstPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnError value) onError,
    required TResult Function(ToFirstPage value) toFirstPage,
  }) {
    return toFirstPage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnError value)? onError,
    TResult Function(ToFirstPage value)? toFirstPage,
    required TResult orElse(),
  }) {
    if (toFirstPage != null) {
      return toFirstPage(this);
    }
    return orElse();
  }
}

abstract class ToFirstPage implements FavouritesEvent {
  const factory ToFirstPage() = _$ToFirstPage;
}
