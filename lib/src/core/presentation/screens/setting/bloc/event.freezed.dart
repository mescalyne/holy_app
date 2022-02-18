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
class _$SettingEventTearOff {
  const _$SettingEventTearOff();

  OnLoad onLoad() {
    return const OnLoad();
  }

  ToFirstPage toFirstPage() {
    return const ToFirstPage();
  }

  OnError onError() {
    return const OnError();
  }

  OnVisualToggle onVisualToggle(bool value) {
    return OnVisualToggle(
      value,
    );
  }
}

/// @nodoc
const $SettingEvent = _$SettingEventTearOff();

/// @nodoc
mixin _$SettingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() toFirstPage,
    required TResult Function() onError,
    required TResult Function(bool value) onVisualToggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? toFirstPage,
    TResult Function()? onError,
    TResult Function(bool value)? onVisualToggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(ToFirstPage value) toFirstPage,
    required TResult Function(OnError value) onError,
    required TResult Function(OnVisualToggle value) onVisualToggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(ToFirstPage value)? toFirstPage,
    TResult Function(OnError value)? onError,
    TResult Function(OnVisualToggle value)? onVisualToggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingEventCopyWith<$Res> {
  factory $SettingEventCopyWith(
          SettingEvent value, $Res Function(SettingEvent) then) =
      _$SettingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingEventCopyWithImpl<$Res> implements $SettingEventCopyWith<$Res> {
  _$SettingEventCopyWithImpl(this._value, this._then);

  final SettingEvent _value;
  // ignore: unused_field
  final $Res Function(SettingEvent) _then;
}

/// @nodoc
abstract class $OnLoadCopyWith<$Res> {
  factory $OnLoadCopyWith(OnLoad value, $Res Function(OnLoad) then) =
      _$OnLoadCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnLoadCopyWithImpl<$Res> extends _$SettingEventCopyWithImpl<$Res>
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
    return 'SettingEvent.onLoad()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SettingEvent.onLoad'));
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
    required TResult Function() toFirstPage,
    required TResult Function() onError,
    required TResult Function(bool value) onVisualToggle,
  }) {
    return onLoad();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? toFirstPage,
    TResult Function()? onError,
    TResult Function(bool value)? onVisualToggle,
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
    required TResult Function(ToFirstPage value) toFirstPage,
    required TResult Function(OnError value) onError,
    required TResult Function(OnVisualToggle value) onVisualToggle,
  }) {
    return onLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(ToFirstPage value)? toFirstPage,
    TResult Function(OnError value)? onError,
    TResult Function(OnVisualToggle value)? onVisualToggle,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad(this);
    }
    return orElse();
  }
}

abstract class OnLoad implements SettingEvent {
  const factory OnLoad() = _$OnLoad;
}

/// @nodoc
abstract class $ToFirstPageCopyWith<$Res> {
  factory $ToFirstPageCopyWith(
          ToFirstPage value, $Res Function(ToFirstPage) then) =
      _$ToFirstPageCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToFirstPageCopyWithImpl<$Res> extends _$SettingEventCopyWithImpl<$Res>
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
    return 'SettingEvent.toFirstPage()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SettingEvent.toFirstPage'));
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
    required TResult Function() toFirstPage,
    required TResult Function() onError,
    required TResult Function(bool value) onVisualToggle,
  }) {
    return toFirstPage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? toFirstPage,
    TResult Function()? onError,
    TResult Function(bool value)? onVisualToggle,
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
    required TResult Function(ToFirstPage value) toFirstPage,
    required TResult Function(OnError value) onError,
    required TResult Function(OnVisualToggle value) onVisualToggle,
  }) {
    return toFirstPage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(ToFirstPage value)? toFirstPage,
    TResult Function(OnError value)? onError,
    TResult Function(OnVisualToggle value)? onVisualToggle,
    required TResult orElse(),
  }) {
    if (toFirstPage != null) {
      return toFirstPage(this);
    }
    return orElse();
  }
}

abstract class ToFirstPage implements SettingEvent {
  const factory ToFirstPage() = _$ToFirstPage;
}

/// @nodoc
abstract class $OnErrorCopyWith<$Res> {
  factory $OnErrorCopyWith(OnError value, $Res Function(OnError) then) =
      _$OnErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnErrorCopyWithImpl<$Res> extends _$SettingEventCopyWithImpl<$Res>
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
    return 'SettingEvent.onError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SettingEvent.onError'));
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
    required TResult Function() toFirstPage,
    required TResult Function() onError,
    required TResult Function(bool value) onVisualToggle,
  }) {
    return onError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? toFirstPage,
    TResult Function()? onError,
    TResult Function(bool value)? onVisualToggle,
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
    required TResult Function(ToFirstPage value) toFirstPage,
    required TResult Function(OnError value) onError,
    required TResult Function(OnVisualToggle value) onVisualToggle,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(ToFirstPage value)? toFirstPage,
    TResult Function(OnError value)? onError,
    TResult Function(OnVisualToggle value)? onVisualToggle,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class OnError implements SettingEvent {
  const factory OnError() = _$OnError;
}

/// @nodoc
abstract class $OnVisualToggleCopyWith<$Res> {
  factory $OnVisualToggleCopyWith(
          OnVisualToggle value, $Res Function(OnVisualToggle) then) =
      _$OnVisualToggleCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class _$OnVisualToggleCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res>
    implements $OnVisualToggleCopyWith<$Res> {
  _$OnVisualToggleCopyWithImpl(
      OnVisualToggle _value, $Res Function(OnVisualToggle) _then)
      : super(_value, (v) => _then(v as OnVisualToggle));

  @override
  OnVisualToggle get _value => super._value as OnVisualToggle;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(OnVisualToggle(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnVisualToggle with DiagnosticableTreeMixin implements OnVisualToggle {
  const _$OnVisualToggle(this.value);

  @override
  final bool value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingEvent.onVisualToggle(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingEvent.onVisualToggle'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnVisualToggle &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $OnVisualToggleCopyWith<OnVisualToggle> get copyWith =>
      _$OnVisualToggleCopyWithImpl<OnVisualToggle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() toFirstPage,
    required TResult Function() onError,
    required TResult Function(bool value) onVisualToggle,
  }) {
    return onVisualToggle(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? toFirstPage,
    TResult Function()? onError,
    TResult Function(bool value)? onVisualToggle,
    required TResult orElse(),
  }) {
    if (onVisualToggle != null) {
      return onVisualToggle(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(ToFirstPage value) toFirstPage,
    required TResult Function(OnError value) onError,
    required TResult Function(OnVisualToggle value) onVisualToggle,
  }) {
    return onVisualToggle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(ToFirstPage value)? toFirstPage,
    TResult Function(OnError value)? onError,
    TResult Function(OnVisualToggle value)? onVisualToggle,
    required TResult orElse(),
  }) {
    if (onVisualToggle != null) {
      return onVisualToggle(this);
    }
    return orElse();
  }
}

abstract class OnVisualToggle implements SettingEvent {
  const factory OnVisualToggle(bool value) = _$OnVisualToggle;

  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnVisualToggleCopyWith<OnVisualToggle> get copyWith =>
      throw _privateConstructorUsedError;
}
