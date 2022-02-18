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
class _$MainEventTearOff {
  const _$MainEventTearOff();

  OnLoad onLoad() {
    return const OnLoad();
  }

  ToStoryPage toStoryPage(QuoteDto quote) {
    return ToStoryPage(
      quote,
    );
  }

  ToFirstPage toFirstPage() {
    return const ToFirstPage();
  }
}

/// @nodoc
const $MainEvent = _$MainEventTearOff();

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(QuoteDto quote) toStoryPage,
    required TResult Function() toFirstPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(QuoteDto quote)? toStoryPage,
    TResult Function()? toFirstPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(ToStoryPage value) toStoryPage,
    required TResult Function(ToFirstPage value) toFirstPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(ToStoryPage value)? toStoryPage,
    TResult Function(ToFirstPage value)? toFirstPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res> implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  final MainEvent _value;
  // ignore: unused_field
  final $Res Function(MainEvent) _then;
}

/// @nodoc
abstract class $OnLoadCopyWith<$Res> {
  factory $OnLoadCopyWith(OnLoad value, $Res Function(OnLoad) then) =
      _$OnLoadCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnLoadCopyWithImpl<$Res> extends _$MainEventCopyWithImpl<$Res>
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
    return 'MainEvent.onLoad()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MainEvent.onLoad'));
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
    required TResult Function(QuoteDto quote) toStoryPage,
    required TResult Function() toFirstPage,
  }) {
    return onLoad();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(QuoteDto quote)? toStoryPage,
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
    required TResult Function(ToStoryPage value) toStoryPage,
    required TResult Function(ToFirstPage value) toFirstPage,
  }) {
    return onLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(ToStoryPage value)? toStoryPage,
    TResult Function(ToFirstPage value)? toFirstPage,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad(this);
    }
    return orElse();
  }
}

abstract class OnLoad implements MainEvent {
  const factory OnLoad() = _$OnLoad;
}

/// @nodoc
abstract class $ToStoryPageCopyWith<$Res> {
  factory $ToStoryPageCopyWith(
          ToStoryPage value, $Res Function(ToStoryPage) then) =
      _$ToStoryPageCopyWithImpl<$Res>;
  $Res call({QuoteDto quote});
}

/// @nodoc
class _$ToStoryPageCopyWithImpl<$Res> extends _$MainEventCopyWithImpl<$Res>
    implements $ToStoryPageCopyWith<$Res> {
  _$ToStoryPageCopyWithImpl(
      ToStoryPage _value, $Res Function(ToStoryPage) _then)
      : super(_value, (v) => _then(v as ToStoryPage));

  @override
  ToStoryPage get _value => super._value as ToStoryPage;

  @override
  $Res call({
    Object? quote = freezed,
  }) {
    return _then(ToStoryPage(
      quote == freezed
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as QuoteDto,
    ));
  }
}

/// @nodoc

class _$ToStoryPage with DiagnosticableTreeMixin implements ToStoryPage {
  const _$ToStoryPage(this.quote);

  @override
  final QuoteDto quote;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.toStoryPage(quote: $quote)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainEvent.toStoryPage'))
      ..add(DiagnosticsProperty('quote', quote));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ToStoryPage &&
            (identical(other.quote, quote) ||
                const DeepCollectionEquality().equals(other.quote, quote)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(quote);

  @JsonKey(ignore: true)
  @override
  $ToStoryPageCopyWith<ToStoryPage> get copyWith =>
      _$ToStoryPageCopyWithImpl<ToStoryPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function(QuoteDto quote) toStoryPage,
    required TResult Function() toFirstPage,
  }) {
    return toStoryPage(quote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(QuoteDto quote)? toStoryPage,
    TResult Function()? toFirstPage,
    required TResult orElse(),
  }) {
    if (toStoryPage != null) {
      return toStoryPage(quote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(ToStoryPage value) toStoryPage,
    required TResult Function(ToFirstPage value) toFirstPage,
  }) {
    return toStoryPage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(ToStoryPage value)? toStoryPage,
    TResult Function(ToFirstPage value)? toFirstPage,
    required TResult orElse(),
  }) {
    if (toStoryPage != null) {
      return toStoryPage(this);
    }
    return orElse();
  }
}

abstract class ToStoryPage implements MainEvent {
  const factory ToStoryPage(QuoteDto quote) = _$ToStoryPage;

  QuoteDto get quote => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToStoryPageCopyWith<ToStoryPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToFirstPageCopyWith<$Res> {
  factory $ToFirstPageCopyWith(
          ToFirstPage value, $Res Function(ToFirstPage) then) =
      _$ToFirstPageCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToFirstPageCopyWithImpl<$Res> extends _$MainEventCopyWithImpl<$Res>
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
    return 'MainEvent.toFirstPage()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MainEvent.toFirstPage'));
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
    required TResult Function(QuoteDto quote) toStoryPage,
    required TResult Function() toFirstPage,
  }) {
    return toFirstPage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function(QuoteDto quote)? toStoryPage,
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
    required TResult Function(ToStoryPage value) toStoryPage,
    required TResult Function(ToFirstPage value) toFirstPage,
  }) {
    return toFirstPage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(ToStoryPage value)? toStoryPage,
    TResult Function(ToFirstPage value)? toFirstPage,
    required TResult orElse(),
  }) {
    if (toFirstPage != null) {
      return toFirstPage(this);
    }
    return orElse();
  }
}

abstract class ToFirstPage implements MainEvent {
  const factory ToFirstPage() = _$ToFirstPage;
}
