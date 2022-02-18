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
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  OnLoaded onLoaded() {
    return const OnLoaded();
  }

  OnBottomNavigationItemClickedEvent onBottomNavigationItemClickedEvent(
      HomeScreen selectedScreen) {
    return OnBottomNavigationItemClickedEvent(
      selectedScreen,
    );
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function(HomeScreen selectedScreen)
        onBottomNavigationItemClickedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(HomeScreen selectedScreen)?
        onBottomNavigationItemClickedEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(OnBottomNavigationItemClickedEvent value)
        onBottomNavigationItemClickedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnBottomNavigationItemClickedEvent value)?
        onBottomNavigationItemClickedEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class $OnLoadedCopyWith<$Res> {
  factory $OnLoadedCopyWith(OnLoaded value, $Res Function(OnLoaded) then) =
      _$OnLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnLoadedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $OnLoadedCopyWith<$Res> {
  _$OnLoadedCopyWithImpl(OnLoaded _value, $Res Function(OnLoaded) _then)
      : super(_value, (v) => _then(v as OnLoaded));

  @override
  OnLoaded get _value => super._value as OnLoaded;
}

/// @nodoc

class _$OnLoaded with DiagnosticableTreeMixin implements OnLoaded {
  const _$OnLoaded();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.onLoaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeEvent.onLoaded'));
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
    required TResult Function(HomeScreen selectedScreen)
        onBottomNavigationItemClickedEvent,
  }) {
    return onLoaded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(HomeScreen selectedScreen)?
        onBottomNavigationItemClickedEvent,
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
    required TResult Function(OnBottomNavigationItemClickedEvent value)
        onBottomNavigationItemClickedEvent,
  }) {
    return onLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnBottomNavigationItemClickedEvent value)?
        onBottomNavigationItemClickedEvent,
    required TResult orElse(),
  }) {
    if (onLoaded != null) {
      return onLoaded(this);
    }
    return orElse();
  }
}

abstract class OnLoaded implements HomeEvent {
  const factory OnLoaded() = _$OnLoaded;
}

/// @nodoc
abstract class $OnBottomNavigationItemClickedEventCopyWith<$Res> {
  factory $OnBottomNavigationItemClickedEventCopyWith(
          OnBottomNavigationItemClickedEvent value,
          $Res Function(OnBottomNavigationItemClickedEvent) then) =
      _$OnBottomNavigationItemClickedEventCopyWithImpl<$Res>;
  $Res call({HomeScreen selectedScreen});
}

/// @nodoc
class _$OnBottomNavigationItemClickedEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $OnBottomNavigationItemClickedEventCopyWith<$Res> {
  _$OnBottomNavigationItemClickedEventCopyWithImpl(
      OnBottomNavigationItemClickedEvent _value,
      $Res Function(OnBottomNavigationItemClickedEvent) _then)
      : super(_value, (v) => _then(v as OnBottomNavigationItemClickedEvent));

  @override
  OnBottomNavigationItemClickedEvent get _value =>
      super._value as OnBottomNavigationItemClickedEvent;

  @override
  $Res call({
    Object? selectedScreen = freezed,
  }) {
    return _then(OnBottomNavigationItemClickedEvent(
      selectedScreen == freezed
          ? _value.selectedScreen
          : selectedScreen // ignore: cast_nullable_to_non_nullable
              as HomeScreen,
    ));
  }
}

/// @nodoc

class _$OnBottomNavigationItemClickedEvent
    with DiagnosticableTreeMixin
    implements OnBottomNavigationItemClickedEvent {
  const _$OnBottomNavigationItemClickedEvent(this.selectedScreen);

  @override
  final HomeScreen selectedScreen;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.onBottomNavigationItemClickedEvent(selectedScreen: $selectedScreen)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'HomeEvent.onBottomNavigationItemClickedEvent'))
      ..add(DiagnosticsProperty('selectedScreen', selectedScreen));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnBottomNavigationItemClickedEvent &&
            (identical(other.selectedScreen, selectedScreen) ||
                const DeepCollectionEquality()
                    .equals(other.selectedScreen, selectedScreen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedScreen);

  @JsonKey(ignore: true)
  @override
  $OnBottomNavigationItemClickedEventCopyWith<
          OnBottomNavigationItemClickedEvent>
      get copyWith => _$OnBottomNavigationItemClickedEventCopyWithImpl<
          OnBottomNavigationItemClickedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function(HomeScreen selectedScreen)
        onBottomNavigationItemClickedEvent,
  }) {
    return onBottomNavigationItemClickedEvent(selectedScreen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(HomeScreen selectedScreen)?
        onBottomNavigationItemClickedEvent,
    required TResult orElse(),
  }) {
    if (onBottomNavigationItemClickedEvent != null) {
      return onBottomNavigationItemClickedEvent(selectedScreen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(OnBottomNavigationItemClickedEvent value)
        onBottomNavigationItemClickedEvent,
  }) {
    return onBottomNavigationItemClickedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnBottomNavigationItemClickedEvent value)?
        onBottomNavigationItemClickedEvent,
    required TResult orElse(),
  }) {
    if (onBottomNavigationItemClickedEvent != null) {
      return onBottomNavigationItemClickedEvent(this);
    }
    return orElse();
  }
}

abstract class OnBottomNavigationItemClickedEvent implements HomeEvent {
  const factory OnBottomNavigationItemClickedEvent(HomeScreen selectedScreen) =
      _$OnBottomNavigationItemClickedEvent;

  HomeScreen get selectedScreen => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnBottomNavigationItemClickedEventCopyWith<
          OnBottomNavigationItemClickedEvent>
      get copyWith => throw _privateConstructorUsedError;
}
