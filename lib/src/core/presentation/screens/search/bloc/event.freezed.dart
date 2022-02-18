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
class _$SearchEventTearOff {
  const _$SearchEventTearOff();

  OnLoad onLoad() {
    return const OnLoad();
  }

  ToResultPage toResultPage(String tag) {
    return ToResultPage(
      tag,
    );
  }

  ToFirstPage toFirstPage() {
    return const ToFirstPage();
  }
}

/// @nodoc
const $SearchEvent = _$SearchEventTearOff();

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(String tag) toResultPage,
    required TResult Function() toFirstPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(String tag)? toResultPage,
    TResult Function()? toFirstPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(ToResultPage value) toResultPage,
    required TResult Function(ToFirstPage value) toFirstPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(ToResultPage value)? toResultPage,
    TResult Function(ToFirstPage value)? toFirstPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class $OnLoadCopyWith<$Res> {
  factory $OnLoadCopyWith(OnLoad value, $Res Function(OnLoad) then) =
      _$OnLoadCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnLoadCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
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
    return 'SearchEvent.onLoad()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SearchEvent.onLoad'));
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
    required TResult Function(String tag) toResultPage,
    required TResult Function() toFirstPage,
  }) {
    return onLoad();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(String tag)? toResultPage,
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
    required TResult Function(ToResultPage value) toResultPage,
    required TResult Function(ToFirstPage value) toFirstPage,
  }) {
    return onLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(ToResultPage value)? toResultPage,
    TResult Function(ToFirstPage value)? toFirstPage,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad(this);
    }
    return orElse();
  }
}

abstract class OnLoad implements SearchEvent {
  const factory OnLoad() = _$OnLoad;
}

/// @nodoc
abstract class $ToResultPageCopyWith<$Res> {
  factory $ToResultPageCopyWith(
          ToResultPage value, $Res Function(ToResultPage) then) =
      _$ToResultPageCopyWithImpl<$Res>;
  $Res call({String tag});
}

/// @nodoc
class _$ToResultPageCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements $ToResultPageCopyWith<$Res> {
  _$ToResultPageCopyWithImpl(
      ToResultPage _value, $Res Function(ToResultPage) _then)
      : super(_value, (v) => _then(v as ToResultPage));

  @override
  ToResultPage get _value => super._value as ToResultPage;

  @override
  $Res call({
    Object? tag = freezed,
  }) {
    return _then(ToResultPage(
      tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToResultPage with DiagnosticableTreeMixin implements ToResultPage {
  const _$ToResultPage(this.tag);

  @override
  final String tag;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.toResultPage(tag: $tag)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchEvent.toResultPage'))
      ..add(DiagnosticsProperty('tag', tag));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ToResultPage &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tag);

  @JsonKey(ignore: true)
  @override
  $ToResultPageCopyWith<ToResultPage> get copyWith =>
      _$ToResultPageCopyWithImpl<ToResultPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(String tag) toResultPage,
    required TResult Function() toFirstPage,
  }) {
    return toResultPage(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(String tag)? toResultPage,
    TResult Function()? toFirstPage,
    required TResult orElse(),
  }) {
    if (toResultPage != null) {
      return toResultPage(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(ToResultPage value) toResultPage,
    required TResult Function(ToFirstPage value) toFirstPage,
  }) {
    return toResultPage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(ToResultPage value)? toResultPage,
    TResult Function(ToFirstPage value)? toFirstPage,
    required TResult orElse(),
  }) {
    if (toResultPage != null) {
      return toResultPage(this);
    }
    return orElse();
  }
}

abstract class ToResultPage implements SearchEvent {
  const factory ToResultPage(String tag) = _$ToResultPage;

  String get tag => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToResultPageCopyWith<ToResultPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToFirstPageCopyWith<$Res> {
  factory $ToFirstPageCopyWith(
          ToFirstPage value, $Res Function(ToFirstPage) then) =
      _$ToFirstPageCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToFirstPageCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
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
    return 'SearchEvent.toFirstPage()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SearchEvent.toFirstPage'));
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
    required TResult Function(String tag) toResultPage,
    required TResult Function() toFirstPage,
  }) {
    return toFirstPage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(String tag)? toResultPage,
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
    required TResult Function(ToResultPage value) toResultPage,
    required TResult Function(ToFirstPage value) toFirstPage,
  }) {
    return toFirstPage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(ToResultPage value)? toResultPage,
    TResult Function(ToFirstPage value)? toFirstPage,
    required TResult orElse(),
  }) {
    if (toFirstPage != null) {
      return toFirstPage(this);
    }
    return orElse();
  }
}

abstract class ToFirstPage implements SearchEvent {
  const factory ToFirstPage() = _$ToFirstPage;
}
