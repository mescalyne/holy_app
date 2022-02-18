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
class _$FirstEventTearOff {
  const _$FirstEventTearOff();

  OnLoaded onLoaded() {
    return const OnLoaded();
  }

  ToHome toHome() {
    return const ToHome();
  }

  ToClose toClose() {
    return const ToClose();
  }

  ToScrollScrollbar toUpdatePositionScrollbar(double position) {
    return ToScrollScrollbar(
      position,
    );
  }
}

/// @nodoc
const $FirstEvent = _$FirstEventTearOff();

/// @nodoc
mixin _$FirstEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function() toHome,
    required TResult Function() toClose,
    required TResult Function(double position) toUpdatePositionScrollbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? toHome,
    TResult Function()? toClose,
    TResult Function(double position)? toUpdatePositionScrollbar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(ToHome value) toHome,
    required TResult Function(ToClose value) toClose,
    required TResult Function(ToScrollScrollbar value)
        toUpdatePositionScrollbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ToHome value)? toHome,
    TResult Function(ToClose value)? toClose,
    TResult Function(ToScrollScrollbar value)? toUpdatePositionScrollbar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstEventCopyWith<$Res> {
  factory $FirstEventCopyWith(
          FirstEvent value, $Res Function(FirstEvent) then) =
      _$FirstEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FirstEventCopyWithImpl<$Res> implements $FirstEventCopyWith<$Res> {
  _$FirstEventCopyWithImpl(this._value, this._then);

  final FirstEvent _value;
  // ignore: unused_field
  final $Res Function(FirstEvent) _then;
}

/// @nodoc
abstract class $OnLoadedCopyWith<$Res> {
  factory $OnLoadedCopyWith(OnLoaded value, $Res Function(OnLoaded) then) =
      _$OnLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnLoadedCopyWithImpl<$Res> extends _$FirstEventCopyWithImpl<$Res>
    implements $OnLoadedCopyWith<$Res> {
  _$OnLoadedCopyWithImpl(OnLoaded _value, $Res Function(OnLoaded) _then)
      : super(_value, (v) => _then(v as OnLoaded));

  @override
  OnLoaded get _value => super._value as OnLoaded;
}

/// @nodoc

class _$OnLoaded implements OnLoaded {
  const _$OnLoaded();

  @override
  String toString() {
    return 'FirstEvent.onLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function() toHome,
    required TResult Function() toClose,
    required TResult Function(double position) toUpdatePositionScrollbar,
  }) {
    return onLoaded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? toHome,
    TResult Function()? toClose,
    TResult Function(double position)? toUpdatePositionScrollbar,
    required TResult orElse(),
  }) {
    if (onLoaded != null) {
      return onLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(ToHome value) toHome,
    required TResult Function(ToClose value) toClose,
    required TResult Function(ToScrollScrollbar value)
        toUpdatePositionScrollbar,
  }) {
    return onLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ToHome value)? toHome,
    TResult Function(ToClose value)? toClose,
    TResult Function(ToScrollScrollbar value)? toUpdatePositionScrollbar,
    required TResult orElse(),
  }) {
    if (onLoaded != null) {
      return onLoaded(this);
    }
    return orElse();
  }
}

abstract class OnLoaded implements FirstEvent {
  const factory OnLoaded() = _$OnLoaded;
}

/// @nodoc
abstract class $ToHomeCopyWith<$Res> {
  factory $ToHomeCopyWith(ToHome value, $Res Function(ToHome) then) =
      _$ToHomeCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToHomeCopyWithImpl<$Res> extends _$FirstEventCopyWithImpl<$Res>
    implements $ToHomeCopyWith<$Res> {
  _$ToHomeCopyWithImpl(ToHome _value, $Res Function(ToHome) _then)
      : super(_value, (v) => _then(v as ToHome));

  @override
  ToHome get _value => super._value as ToHome;
}

/// @nodoc

class _$ToHome implements ToHome {
  const _$ToHome();

  @override
  String toString() {
    return 'FirstEvent.toHome()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ToHome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function() toHome,
    required TResult Function() toClose,
    required TResult Function(double position) toUpdatePositionScrollbar,
  }) {
    return toHome();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? toHome,
    TResult Function()? toClose,
    TResult Function(double position)? toUpdatePositionScrollbar,
    required TResult orElse(),
  }) {
    if (toHome != null) {
      return toHome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(ToHome value) toHome,
    required TResult Function(ToClose value) toClose,
    required TResult Function(ToScrollScrollbar value)
        toUpdatePositionScrollbar,
  }) {
    return toHome(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ToHome value)? toHome,
    TResult Function(ToClose value)? toClose,
    TResult Function(ToScrollScrollbar value)? toUpdatePositionScrollbar,
    required TResult orElse(),
  }) {
    if (toHome != null) {
      return toHome(this);
    }
    return orElse();
  }
}

abstract class ToHome implements FirstEvent {
  const factory ToHome() = _$ToHome;
}

/// @nodoc
abstract class $ToCloseCopyWith<$Res> {
  factory $ToCloseCopyWith(ToClose value, $Res Function(ToClose) then) =
      _$ToCloseCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToCloseCopyWithImpl<$Res> extends _$FirstEventCopyWithImpl<$Res>
    implements $ToCloseCopyWith<$Res> {
  _$ToCloseCopyWithImpl(ToClose _value, $Res Function(ToClose) _then)
      : super(_value, (v) => _then(v as ToClose));

  @override
  ToClose get _value => super._value as ToClose;
}

/// @nodoc

class _$ToClose implements ToClose {
  const _$ToClose();

  @override
  String toString() {
    return 'FirstEvent.toClose()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ToClose);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function() toHome,
    required TResult Function() toClose,
    required TResult Function(double position) toUpdatePositionScrollbar,
  }) {
    return toClose();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? toHome,
    TResult Function()? toClose,
    TResult Function(double position)? toUpdatePositionScrollbar,
    required TResult orElse(),
  }) {
    if (toClose != null) {
      return toClose();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(ToHome value) toHome,
    required TResult Function(ToClose value) toClose,
    required TResult Function(ToScrollScrollbar value)
        toUpdatePositionScrollbar,
  }) {
    return toClose(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ToHome value)? toHome,
    TResult Function(ToClose value)? toClose,
    TResult Function(ToScrollScrollbar value)? toUpdatePositionScrollbar,
    required TResult orElse(),
  }) {
    if (toClose != null) {
      return toClose(this);
    }
    return orElse();
  }
}

abstract class ToClose implements FirstEvent {
  const factory ToClose() = _$ToClose;
}

/// @nodoc
abstract class $ToScrollScrollbarCopyWith<$Res> {
  factory $ToScrollScrollbarCopyWith(
          ToScrollScrollbar value, $Res Function(ToScrollScrollbar) then) =
      _$ToScrollScrollbarCopyWithImpl<$Res>;
  $Res call({double position});
}

/// @nodoc
class _$ToScrollScrollbarCopyWithImpl<$Res>
    extends _$FirstEventCopyWithImpl<$Res>
    implements $ToScrollScrollbarCopyWith<$Res> {
  _$ToScrollScrollbarCopyWithImpl(
      ToScrollScrollbar _value, $Res Function(ToScrollScrollbar) _then)
      : super(_value, (v) => _then(v as ToScrollScrollbar));

  @override
  ToScrollScrollbar get _value => super._value as ToScrollScrollbar;

  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(ToScrollScrollbar(
      position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ToScrollScrollbar implements ToScrollScrollbar {
  const _$ToScrollScrollbar(this.position);

  @override
  final double position;

  @override
  String toString() {
    return 'FirstEvent.toUpdatePositionScrollbar(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ToScrollScrollbar &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(position);

  @JsonKey(ignore: true)
  @override
  $ToScrollScrollbarCopyWith<ToScrollScrollbar> get copyWith =>
      _$ToScrollScrollbarCopyWithImpl<ToScrollScrollbar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function() toHome,
    required TResult Function() toClose,
    required TResult Function(double position) toUpdatePositionScrollbar,
  }) {
    return toUpdatePositionScrollbar(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? toHome,
    TResult Function()? toClose,
    TResult Function(double position)? toUpdatePositionScrollbar,
    required TResult orElse(),
  }) {
    if (toUpdatePositionScrollbar != null) {
      return toUpdatePositionScrollbar(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(ToHome value) toHome,
    required TResult Function(ToClose value) toClose,
    required TResult Function(ToScrollScrollbar value)
        toUpdatePositionScrollbar,
  }) {
    return toUpdatePositionScrollbar(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ToHome value)? toHome,
    TResult Function(ToClose value)? toClose,
    TResult Function(ToScrollScrollbar value)? toUpdatePositionScrollbar,
    required TResult orElse(),
  }) {
    if (toUpdatePositionScrollbar != null) {
      return toUpdatePositionScrollbar(this);
    }
    return orElse();
  }
}

abstract class ToScrollScrollbar implements FirstEvent {
  const factory ToScrollScrollbar(double position) = _$ToScrollScrollbar;

  double get position => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToScrollScrollbarCopyWith<ToScrollScrollbar> get copyWith =>
      throw _privateConstructorUsedError;
}
