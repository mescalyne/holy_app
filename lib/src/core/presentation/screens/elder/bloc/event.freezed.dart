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
class _$ElderEventTearOff {
  const _$ElderEventTearOff();

  OnLoad onLoad() {
    return const OnLoad();
  }

  OnError onError() {
    return const OnError();
  }

  OnClickTabBar onClickTabBar(int index) {
    return OnClickTabBar(
      index,
    );
  }
}

/// @nodoc
const $ElderEvent = _$ElderEventTearOff();

/// @nodoc
mixin _$ElderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onError,
    required TResult Function(int index) onClickTabBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onError,
    TResult Function(int index)? onClickTabBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnError value) onError,
    required TResult Function(OnClickTabBar value) onClickTabBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnError value)? onError,
    TResult Function(OnClickTabBar value)? onClickTabBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElderEventCopyWith<$Res> {
  factory $ElderEventCopyWith(
          ElderEvent value, $Res Function(ElderEvent) then) =
      _$ElderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ElderEventCopyWithImpl<$Res> implements $ElderEventCopyWith<$Res> {
  _$ElderEventCopyWithImpl(this._value, this._then);

  final ElderEvent _value;
  // ignore: unused_field
  final $Res Function(ElderEvent) _then;
}

/// @nodoc
abstract class $OnLoadCopyWith<$Res> {
  factory $OnLoadCopyWith(OnLoad value, $Res Function(OnLoad) then) =
      _$OnLoadCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnLoadCopyWithImpl<$Res> extends _$ElderEventCopyWithImpl<$Res>
    implements $OnLoadCopyWith<$Res> {
  _$OnLoadCopyWithImpl(OnLoad _value, $Res Function(OnLoad) _then)
      : super(_value, (v) => _then(v as OnLoad));

  @override
  OnLoad get _value => super._value as OnLoad;
}

/// @nodoc

class _$OnLoad implements OnLoad {
  const _$OnLoad();

  @override
  String toString() {
    return 'ElderEvent.onLoad()';
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
    required TResult Function(int index) onClickTabBar,
  }) {
    return onLoad();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onError,
    TResult Function(int index)? onClickTabBar,
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
    required TResult Function(OnClickTabBar value) onClickTabBar,
  }) {
    return onLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnError value)? onError,
    TResult Function(OnClickTabBar value)? onClickTabBar,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad(this);
    }
    return orElse();
  }
}

abstract class OnLoad implements ElderEvent {
  const factory OnLoad() = _$OnLoad;
}

/// @nodoc
abstract class $OnErrorCopyWith<$Res> {
  factory $OnErrorCopyWith(OnError value, $Res Function(OnError) then) =
      _$OnErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnErrorCopyWithImpl<$Res> extends _$ElderEventCopyWithImpl<$Res>
    implements $OnErrorCopyWith<$Res> {
  _$OnErrorCopyWithImpl(OnError _value, $Res Function(OnError) _then)
      : super(_value, (v) => _then(v as OnError));

  @override
  OnError get _value => super._value as OnError;
}

/// @nodoc

class _$OnError implements OnError {
  const _$OnError();

  @override
  String toString() {
    return 'ElderEvent.onError()';
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
    required TResult Function(int index) onClickTabBar,
  }) {
    return onError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onError,
    TResult Function(int index)? onClickTabBar,
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
    required TResult Function(OnClickTabBar value) onClickTabBar,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnError value)? onError,
    TResult Function(OnClickTabBar value)? onClickTabBar,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class OnError implements ElderEvent {
  const factory OnError() = _$OnError;
}

/// @nodoc
abstract class $OnClickTabBarCopyWith<$Res> {
  factory $OnClickTabBarCopyWith(
          OnClickTabBar value, $Res Function(OnClickTabBar) then) =
      _$OnClickTabBarCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$OnClickTabBarCopyWithImpl<$Res> extends _$ElderEventCopyWithImpl<$Res>
    implements $OnClickTabBarCopyWith<$Res> {
  _$OnClickTabBarCopyWithImpl(
      OnClickTabBar _value, $Res Function(OnClickTabBar) _then)
      : super(_value, (v) => _then(v as OnClickTabBar));

  @override
  OnClickTabBar get _value => super._value as OnClickTabBar;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(OnClickTabBar(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnClickTabBar implements OnClickTabBar {
  const _$OnClickTabBar(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'ElderEvent.onClickTabBar(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnClickTabBar &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $OnClickTabBarCopyWith<OnClickTabBar> get copyWith =>
      _$OnClickTabBarCopyWithImpl<OnClickTabBar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() onError,
    required TResult Function(int index) onClickTabBar,
  }) {
    return onClickTabBar(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? onError,
    TResult Function(int index)? onClickTabBar,
    required TResult orElse(),
  }) {
    if (onClickTabBar != null) {
      return onClickTabBar(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(OnError value) onError,
    required TResult Function(OnClickTabBar value) onClickTabBar,
  }) {
    return onClickTabBar(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(OnError value)? onError,
    TResult Function(OnClickTabBar value)? onClickTabBar,
    required TResult orElse(),
  }) {
    if (onClickTabBar != null) {
      return onClickTabBar(this);
    }
    return orElse();
  }
}

abstract class OnClickTabBar implements ElderEvent {
  const factory OnClickTabBar(int index) = _$OnClickTabBar;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnClickTabBarCopyWith<OnClickTabBar> get copyWith =>
      throw _privateConstructorUsedError;
}
