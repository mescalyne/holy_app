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
class _$EldersEventTearOff {
  const _$EldersEventTearOff();

  OnLoad onLoad() {
    return const OnLoad();
  }

  ToFirstPage toFirstPage() {
    return const ToFirstPage();
  }

  OnError onError() {
    return const OnError();
  }

  ToElder toElder(AuthorDto author) {
    return ToElder(
      author,
    );
  }
}

/// @nodoc
const $EldersEvent = _$EldersEventTearOff();

/// @nodoc
mixin _$EldersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() toFirstPage,
    required TResult Function() onError,
    required TResult Function(AuthorDto author) toElder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? toFirstPage,
    TResult Function()? onError,
    TResult Function(AuthorDto author)? toElder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(ToFirstPage value) toFirstPage,
    required TResult Function(OnError value) onError,
    required TResult Function(ToElder value) toElder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(ToFirstPage value)? toFirstPage,
    TResult Function(OnError value)? onError,
    TResult Function(ToElder value)? toElder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EldersEventCopyWith<$Res> {
  factory $EldersEventCopyWith(
          EldersEvent value, $Res Function(EldersEvent) then) =
      _$EldersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EldersEventCopyWithImpl<$Res> implements $EldersEventCopyWith<$Res> {
  _$EldersEventCopyWithImpl(this._value, this._then);

  final EldersEvent _value;
  // ignore: unused_field
  final $Res Function(EldersEvent) _then;
}

/// @nodoc
abstract class $OnLoadCopyWith<$Res> {
  factory $OnLoadCopyWith(OnLoad value, $Res Function(OnLoad) then) =
      _$OnLoadCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnLoadCopyWithImpl<$Res> extends _$EldersEventCopyWithImpl<$Res>
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
    return 'EldersEvent.onLoad()';
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
    required TResult Function(AuthorDto author) toElder,
  }) {
    return onLoad();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? toFirstPage,
    TResult Function()? onError,
    TResult Function(AuthorDto author)? toElder,
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
    required TResult Function(ToElder value) toElder,
  }) {
    return onLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(ToFirstPage value)? toFirstPage,
    TResult Function(OnError value)? onError,
    TResult Function(ToElder value)? toElder,
    required TResult orElse(),
  }) {
    if (onLoad != null) {
      return onLoad(this);
    }
    return orElse();
  }
}

abstract class OnLoad implements EldersEvent {
  const factory OnLoad() = _$OnLoad;
}

/// @nodoc
abstract class $ToFirstPageCopyWith<$Res> {
  factory $ToFirstPageCopyWith(
          ToFirstPage value, $Res Function(ToFirstPage) then) =
      _$ToFirstPageCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToFirstPageCopyWithImpl<$Res> extends _$EldersEventCopyWithImpl<$Res>
    implements $ToFirstPageCopyWith<$Res> {
  _$ToFirstPageCopyWithImpl(
      ToFirstPage _value, $Res Function(ToFirstPage) _then)
      : super(_value, (v) => _then(v as ToFirstPage));

  @override
  ToFirstPage get _value => super._value as ToFirstPage;
}

/// @nodoc

class _$ToFirstPage implements ToFirstPage {
  const _$ToFirstPage();

  @override
  String toString() {
    return 'EldersEvent.toFirstPage()';
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
    required TResult Function(AuthorDto author) toElder,
  }) {
    return toFirstPage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? toFirstPage,
    TResult Function()? onError,
    TResult Function(AuthorDto author)? toElder,
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
    required TResult Function(ToElder value) toElder,
  }) {
    return toFirstPage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(ToFirstPage value)? toFirstPage,
    TResult Function(OnError value)? onError,
    TResult Function(ToElder value)? toElder,
    required TResult orElse(),
  }) {
    if (toFirstPage != null) {
      return toFirstPage(this);
    }
    return orElse();
  }
}

abstract class ToFirstPage implements EldersEvent {
  const factory ToFirstPage() = _$ToFirstPage;
}

/// @nodoc
abstract class $OnErrorCopyWith<$Res> {
  factory $OnErrorCopyWith(OnError value, $Res Function(OnError) then) =
      _$OnErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnErrorCopyWithImpl<$Res> extends _$EldersEventCopyWithImpl<$Res>
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
    return 'EldersEvent.onError()';
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
    required TResult Function(AuthorDto author) toElder,
  }) {
    return onError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? toFirstPage,
    TResult Function()? onError,
    TResult Function(AuthorDto author)? toElder,
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
    required TResult Function(ToElder value) toElder,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(ToFirstPage value)? toFirstPage,
    TResult Function(OnError value)? onError,
    TResult Function(ToElder value)? toElder,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class OnError implements EldersEvent {
  const factory OnError() = _$OnError;
}

/// @nodoc
abstract class $ToElderCopyWith<$Res> {
  factory $ToElderCopyWith(ToElder value, $Res Function(ToElder) then) =
      _$ToElderCopyWithImpl<$Res>;
  $Res call({AuthorDto author});
}

/// @nodoc
class _$ToElderCopyWithImpl<$Res> extends _$EldersEventCopyWithImpl<$Res>
    implements $ToElderCopyWith<$Res> {
  _$ToElderCopyWithImpl(ToElder _value, $Res Function(ToElder) _then)
      : super(_value, (v) => _then(v as ToElder));

  @override
  ToElder get _value => super._value as ToElder;

  @override
  $Res call({
    Object? author = freezed,
  }) {
    return _then(ToElder(
      author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as AuthorDto,
    ));
  }
}

/// @nodoc

class _$ToElder implements ToElder {
  const _$ToElder(this.author);

  @override
  final AuthorDto author;

  @override
  String toString() {
    return 'EldersEvent.toElder(author: $author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ToElder &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(author);

  @JsonKey(ignore: true)
  @override
  $ToElderCopyWith<ToElder> get copyWith =>
      _$ToElderCopyWithImpl<ToElder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoad,
    required TResult Function() toFirstPage,
    required TResult Function() onError,
    required TResult Function(AuthorDto author) toElder,
  }) {
    return toElder(author);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoad,
    TResult Function()? toFirstPage,
    TResult Function()? onError,
    TResult Function(AuthorDto author)? toElder,
    required TResult orElse(),
  }) {
    if (toElder != null) {
      return toElder(author);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoad value) onLoad,
    required TResult Function(ToFirstPage value) toFirstPage,
    required TResult Function(OnError value) onError,
    required TResult Function(ToElder value) toElder,
  }) {
    return toElder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoad value)? onLoad,
    TResult Function(ToFirstPage value)? toFirstPage,
    TResult Function(OnError value)? onError,
    TResult Function(ToElder value)? toElder,
    required TResult orElse(),
  }) {
    if (toElder != null) {
      return toElder(this);
    }
    return orElse();
  }
}

abstract class ToElder implements EldersEvent {
  const factory ToElder(AuthorDto author) = _$ToElder;

  AuthorDto get author => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToElderCopyWith<ToElder> get copyWith => throw _privateConstructorUsedError;
}
