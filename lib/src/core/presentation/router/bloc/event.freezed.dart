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
class _$RouterEventTearOff {
  const _$RouterEventTearOff();

  OnPop pop() {
    return const OnPop();
  }

  ToHome toHome() {
    return const ToHome();
  }

  ToFirst toFirst() {
    return const ToFirst();
  }

  ToStorypage toStorypage(QuoteDto quoteDto) {
    return ToStorypage(
      quoteDto,
    );
  }

  ToElder toElder(AuthorDto currentAuthor) {
    return ToElder(
      currentAuthor,
    );
  }

  ToBookView toBookView({required String bookUrl, required String title}) {
    return ToBookView(
      bookUrl: bookUrl,
      title: title,
    );
  }
}

/// @nodoc
const $RouterEvent = _$RouterEventTearOff();

/// @nodoc
mixin _$RouterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pop,
    required TResult Function() toHome,
    required TResult Function() toFirst,
    required TResult Function(QuoteDto quoteDto) toStorypage,
    required TResult Function(AuthorDto currentAuthor) toElder,
    required TResult Function(String bookUrl, String title) toBookView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pop,
    TResult Function()? toHome,
    TResult Function()? toFirst,
    TResult Function(QuoteDto quoteDto)? toStorypage,
    TResult Function(AuthorDto currentAuthor)? toElder,
    TResult Function(String bookUrl, String title)? toBookView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPop value) pop,
    required TResult Function(ToHome value) toHome,
    required TResult Function(ToFirst value) toFirst,
    required TResult Function(ToStorypage value) toStorypage,
    required TResult Function(ToElder value) toElder,
    required TResult Function(ToBookView value) toBookView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPop value)? pop,
    TResult Function(ToHome value)? toHome,
    TResult Function(ToFirst value)? toFirst,
    TResult Function(ToStorypage value)? toStorypage,
    TResult Function(ToElder value)? toElder,
    TResult Function(ToBookView value)? toBookView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouterEventCopyWith<$Res> {
  factory $RouterEventCopyWith(
          RouterEvent value, $Res Function(RouterEvent) then) =
      _$RouterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RouterEventCopyWithImpl<$Res> implements $RouterEventCopyWith<$Res> {
  _$RouterEventCopyWithImpl(this._value, this._then);

  final RouterEvent _value;
  // ignore: unused_field
  final $Res Function(RouterEvent) _then;
}

/// @nodoc
abstract class $OnPopCopyWith<$Res> {
  factory $OnPopCopyWith(OnPop value, $Res Function(OnPop) then) =
      _$OnPopCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnPopCopyWithImpl<$Res> extends _$RouterEventCopyWithImpl<$Res>
    implements $OnPopCopyWith<$Res> {
  _$OnPopCopyWithImpl(OnPop _value, $Res Function(OnPop) _then)
      : super(_value, (v) => _then(v as OnPop));

  @override
  OnPop get _value => super._value as OnPop;
}

/// @nodoc

class _$OnPop with DiagnosticableTreeMixin implements OnPop {
  const _$OnPop();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouterEvent.pop()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'RouterEvent.pop'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnPop);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pop,
    required TResult Function() toHome,
    required TResult Function() toFirst,
    required TResult Function(QuoteDto quoteDto) toStorypage,
    required TResult Function(AuthorDto currentAuthor) toElder,
    required TResult Function(String bookUrl, String title) toBookView,
  }) {
    return pop();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pop,
    TResult Function()? toHome,
    TResult Function()? toFirst,
    TResult Function(QuoteDto quoteDto)? toStorypage,
    TResult Function(AuthorDto currentAuthor)? toElder,
    TResult Function(String bookUrl, String title)? toBookView,
    required TResult orElse(),
  }) {
    if (pop != null) {
      return pop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPop value) pop,
    required TResult Function(ToHome value) toHome,
    required TResult Function(ToFirst value) toFirst,
    required TResult Function(ToStorypage value) toStorypage,
    required TResult Function(ToElder value) toElder,
    required TResult Function(ToBookView value) toBookView,
  }) {
    return pop(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPop value)? pop,
    TResult Function(ToHome value)? toHome,
    TResult Function(ToFirst value)? toFirst,
    TResult Function(ToStorypage value)? toStorypage,
    TResult Function(ToElder value)? toElder,
    TResult Function(ToBookView value)? toBookView,
    required TResult orElse(),
  }) {
    if (pop != null) {
      return pop(this);
    }
    return orElse();
  }
}

abstract class OnPop implements RouterEvent {
  const factory OnPop() = _$OnPop;
}

/// @nodoc
abstract class $ToHomeCopyWith<$Res> {
  factory $ToHomeCopyWith(ToHome value, $Res Function(ToHome) then) =
      _$ToHomeCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToHomeCopyWithImpl<$Res> extends _$RouterEventCopyWithImpl<$Res>
    implements $ToHomeCopyWith<$Res> {
  _$ToHomeCopyWithImpl(ToHome _value, $Res Function(ToHome) _then)
      : super(_value, (v) => _then(v as ToHome));

  @override
  ToHome get _value => super._value as ToHome;
}

/// @nodoc

class _$ToHome with DiagnosticableTreeMixin implements ToHome {
  const _$ToHome();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouterEvent.toHome()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'RouterEvent.toHome'));
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
    required TResult Function() pop,
    required TResult Function() toHome,
    required TResult Function() toFirst,
    required TResult Function(QuoteDto quoteDto) toStorypage,
    required TResult Function(AuthorDto currentAuthor) toElder,
    required TResult Function(String bookUrl, String title) toBookView,
  }) {
    return toHome();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pop,
    TResult Function()? toHome,
    TResult Function()? toFirst,
    TResult Function(QuoteDto quoteDto)? toStorypage,
    TResult Function(AuthorDto currentAuthor)? toElder,
    TResult Function(String bookUrl, String title)? toBookView,
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
    required TResult Function(OnPop value) pop,
    required TResult Function(ToHome value) toHome,
    required TResult Function(ToFirst value) toFirst,
    required TResult Function(ToStorypage value) toStorypage,
    required TResult Function(ToElder value) toElder,
    required TResult Function(ToBookView value) toBookView,
  }) {
    return toHome(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPop value)? pop,
    TResult Function(ToHome value)? toHome,
    TResult Function(ToFirst value)? toFirst,
    TResult Function(ToStorypage value)? toStorypage,
    TResult Function(ToElder value)? toElder,
    TResult Function(ToBookView value)? toBookView,
    required TResult orElse(),
  }) {
    if (toHome != null) {
      return toHome(this);
    }
    return orElse();
  }
}

abstract class ToHome implements RouterEvent {
  const factory ToHome() = _$ToHome;
}

/// @nodoc
abstract class $ToFirstCopyWith<$Res> {
  factory $ToFirstCopyWith(ToFirst value, $Res Function(ToFirst) then) =
      _$ToFirstCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToFirstCopyWithImpl<$Res> extends _$RouterEventCopyWithImpl<$Res>
    implements $ToFirstCopyWith<$Res> {
  _$ToFirstCopyWithImpl(ToFirst _value, $Res Function(ToFirst) _then)
      : super(_value, (v) => _then(v as ToFirst));

  @override
  ToFirst get _value => super._value as ToFirst;
}

/// @nodoc

class _$ToFirst with DiagnosticableTreeMixin implements ToFirst {
  const _$ToFirst();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouterEvent.toFirst()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'RouterEvent.toFirst'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ToFirst);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pop,
    required TResult Function() toHome,
    required TResult Function() toFirst,
    required TResult Function(QuoteDto quoteDto) toStorypage,
    required TResult Function(AuthorDto currentAuthor) toElder,
    required TResult Function(String bookUrl, String title) toBookView,
  }) {
    return toFirst();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pop,
    TResult Function()? toHome,
    TResult Function()? toFirst,
    TResult Function(QuoteDto quoteDto)? toStorypage,
    TResult Function(AuthorDto currentAuthor)? toElder,
    TResult Function(String bookUrl, String title)? toBookView,
    required TResult orElse(),
  }) {
    if (toFirst != null) {
      return toFirst();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPop value) pop,
    required TResult Function(ToHome value) toHome,
    required TResult Function(ToFirst value) toFirst,
    required TResult Function(ToStorypage value) toStorypage,
    required TResult Function(ToElder value) toElder,
    required TResult Function(ToBookView value) toBookView,
  }) {
    return toFirst(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPop value)? pop,
    TResult Function(ToHome value)? toHome,
    TResult Function(ToFirst value)? toFirst,
    TResult Function(ToStorypage value)? toStorypage,
    TResult Function(ToElder value)? toElder,
    TResult Function(ToBookView value)? toBookView,
    required TResult orElse(),
  }) {
    if (toFirst != null) {
      return toFirst(this);
    }
    return orElse();
  }
}

abstract class ToFirst implements RouterEvent {
  const factory ToFirst() = _$ToFirst;
}

/// @nodoc
abstract class $ToStorypageCopyWith<$Res> {
  factory $ToStorypageCopyWith(
          ToStorypage value, $Res Function(ToStorypage) then) =
      _$ToStorypageCopyWithImpl<$Res>;
  $Res call({QuoteDto quoteDto});
}

/// @nodoc
class _$ToStorypageCopyWithImpl<$Res> extends _$RouterEventCopyWithImpl<$Res>
    implements $ToStorypageCopyWith<$Res> {
  _$ToStorypageCopyWithImpl(
      ToStorypage _value, $Res Function(ToStorypage) _then)
      : super(_value, (v) => _then(v as ToStorypage));

  @override
  ToStorypage get _value => super._value as ToStorypage;

  @override
  $Res call({
    Object? quoteDto = freezed,
  }) {
    return _then(ToStorypage(
      quoteDto == freezed
          ? _value.quoteDto
          : quoteDto // ignore: cast_nullable_to_non_nullable
              as QuoteDto,
    ));
  }
}

/// @nodoc

class _$ToStorypage with DiagnosticableTreeMixin implements ToStorypage {
  const _$ToStorypage(this.quoteDto);

  @override
  final QuoteDto quoteDto;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouterEvent.toStorypage(quoteDto: $quoteDto)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RouterEvent.toStorypage'))
      ..add(DiagnosticsProperty('quoteDto', quoteDto));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ToStorypage &&
            (identical(other.quoteDto, quoteDto) ||
                const DeepCollectionEquality()
                    .equals(other.quoteDto, quoteDto)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(quoteDto);

  @JsonKey(ignore: true)
  @override
  $ToStorypageCopyWith<ToStorypage> get copyWith =>
      _$ToStorypageCopyWithImpl<ToStorypage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pop,
    required TResult Function() toHome,
    required TResult Function() toFirst,
    required TResult Function(QuoteDto quoteDto) toStorypage,
    required TResult Function(AuthorDto currentAuthor) toElder,
    required TResult Function(String bookUrl, String title) toBookView,
  }) {
    return toStorypage(quoteDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pop,
    TResult Function()? toHome,
    TResult Function()? toFirst,
    TResult Function(QuoteDto quoteDto)? toStorypage,
    TResult Function(AuthorDto currentAuthor)? toElder,
    TResult Function(String bookUrl, String title)? toBookView,
    required TResult orElse(),
  }) {
    if (toStorypage != null) {
      return toStorypage(quoteDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPop value) pop,
    required TResult Function(ToHome value) toHome,
    required TResult Function(ToFirst value) toFirst,
    required TResult Function(ToStorypage value) toStorypage,
    required TResult Function(ToElder value) toElder,
    required TResult Function(ToBookView value) toBookView,
  }) {
    return toStorypage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPop value)? pop,
    TResult Function(ToHome value)? toHome,
    TResult Function(ToFirst value)? toFirst,
    TResult Function(ToStorypage value)? toStorypage,
    TResult Function(ToElder value)? toElder,
    TResult Function(ToBookView value)? toBookView,
    required TResult orElse(),
  }) {
    if (toStorypage != null) {
      return toStorypage(this);
    }
    return orElse();
  }
}

abstract class ToStorypage implements RouterEvent {
  const factory ToStorypage(QuoteDto quoteDto) = _$ToStorypage;

  QuoteDto get quoteDto => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToStorypageCopyWith<ToStorypage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToElderCopyWith<$Res> {
  factory $ToElderCopyWith(ToElder value, $Res Function(ToElder) then) =
      _$ToElderCopyWithImpl<$Res>;
  $Res call({AuthorDto currentAuthor});
}

/// @nodoc
class _$ToElderCopyWithImpl<$Res> extends _$RouterEventCopyWithImpl<$Res>
    implements $ToElderCopyWith<$Res> {
  _$ToElderCopyWithImpl(ToElder _value, $Res Function(ToElder) _then)
      : super(_value, (v) => _then(v as ToElder));

  @override
  ToElder get _value => super._value as ToElder;

  @override
  $Res call({
    Object? currentAuthor = freezed,
  }) {
    return _then(ToElder(
      currentAuthor == freezed
          ? _value.currentAuthor
          : currentAuthor // ignore: cast_nullable_to_non_nullable
              as AuthorDto,
    ));
  }
}

/// @nodoc

class _$ToElder with DiagnosticableTreeMixin implements ToElder {
  const _$ToElder(this.currentAuthor);

  @override
  final AuthorDto currentAuthor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouterEvent.toElder(currentAuthor: $currentAuthor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RouterEvent.toElder'))
      ..add(DiagnosticsProperty('currentAuthor', currentAuthor));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ToElder &&
            (identical(other.currentAuthor, currentAuthor) ||
                const DeepCollectionEquality()
                    .equals(other.currentAuthor, currentAuthor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentAuthor);

  @JsonKey(ignore: true)
  @override
  $ToElderCopyWith<ToElder> get copyWith =>
      _$ToElderCopyWithImpl<ToElder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pop,
    required TResult Function() toHome,
    required TResult Function() toFirst,
    required TResult Function(QuoteDto quoteDto) toStorypage,
    required TResult Function(AuthorDto currentAuthor) toElder,
    required TResult Function(String bookUrl, String title) toBookView,
  }) {
    return toElder(currentAuthor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pop,
    TResult Function()? toHome,
    TResult Function()? toFirst,
    TResult Function(QuoteDto quoteDto)? toStorypage,
    TResult Function(AuthorDto currentAuthor)? toElder,
    TResult Function(String bookUrl, String title)? toBookView,
    required TResult orElse(),
  }) {
    if (toElder != null) {
      return toElder(currentAuthor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPop value) pop,
    required TResult Function(ToHome value) toHome,
    required TResult Function(ToFirst value) toFirst,
    required TResult Function(ToStorypage value) toStorypage,
    required TResult Function(ToElder value) toElder,
    required TResult Function(ToBookView value) toBookView,
  }) {
    return toElder(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPop value)? pop,
    TResult Function(ToHome value)? toHome,
    TResult Function(ToFirst value)? toFirst,
    TResult Function(ToStorypage value)? toStorypage,
    TResult Function(ToElder value)? toElder,
    TResult Function(ToBookView value)? toBookView,
    required TResult orElse(),
  }) {
    if (toElder != null) {
      return toElder(this);
    }
    return orElse();
  }
}

abstract class ToElder implements RouterEvent {
  const factory ToElder(AuthorDto currentAuthor) = _$ToElder;

  AuthorDto get currentAuthor => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToElderCopyWith<ToElder> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToBookViewCopyWith<$Res> {
  factory $ToBookViewCopyWith(
          ToBookView value, $Res Function(ToBookView) then) =
      _$ToBookViewCopyWithImpl<$Res>;
  $Res call({String bookUrl, String title});
}

/// @nodoc
class _$ToBookViewCopyWithImpl<$Res> extends _$RouterEventCopyWithImpl<$Res>
    implements $ToBookViewCopyWith<$Res> {
  _$ToBookViewCopyWithImpl(ToBookView _value, $Res Function(ToBookView) _then)
      : super(_value, (v) => _then(v as ToBookView));

  @override
  ToBookView get _value => super._value as ToBookView;

  @override
  $Res call({
    Object? bookUrl = freezed,
    Object? title = freezed,
  }) {
    return _then(ToBookView(
      bookUrl: bookUrl == freezed
          ? _value.bookUrl
          : bookUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToBookView with DiagnosticableTreeMixin implements ToBookView {
  const _$ToBookView({required this.bookUrl, required this.title});

  @override
  final String bookUrl;
  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouterEvent.toBookView(bookUrl: $bookUrl, title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RouterEvent.toBookView'))
      ..add(DiagnosticsProperty('bookUrl', bookUrl))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ToBookView &&
            (identical(other.bookUrl, bookUrl) ||
                const DeepCollectionEquality()
                    .equals(other.bookUrl, bookUrl)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bookUrl) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  $ToBookViewCopyWith<ToBookView> get copyWith =>
      _$ToBookViewCopyWithImpl<ToBookView>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pop,
    required TResult Function() toHome,
    required TResult Function() toFirst,
    required TResult Function(QuoteDto quoteDto) toStorypage,
    required TResult Function(AuthorDto currentAuthor) toElder,
    required TResult Function(String bookUrl, String title) toBookView,
  }) {
    return toBookView(bookUrl, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pop,
    TResult Function()? toHome,
    TResult Function()? toFirst,
    TResult Function(QuoteDto quoteDto)? toStorypage,
    TResult Function(AuthorDto currentAuthor)? toElder,
    TResult Function(String bookUrl, String title)? toBookView,
    required TResult orElse(),
  }) {
    if (toBookView != null) {
      return toBookView(bookUrl, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPop value) pop,
    required TResult Function(ToHome value) toHome,
    required TResult Function(ToFirst value) toFirst,
    required TResult Function(ToStorypage value) toStorypage,
    required TResult Function(ToElder value) toElder,
    required TResult Function(ToBookView value) toBookView,
  }) {
    return toBookView(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPop value)? pop,
    TResult Function(ToHome value)? toHome,
    TResult Function(ToFirst value)? toFirst,
    TResult Function(ToStorypage value)? toStorypage,
    TResult Function(ToElder value)? toElder,
    TResult Function(ToBookView value)? toBookView,
    required TResult orElse(),
  }) {
    if (toBookView != null) {
      return toBookView(this);
    }
    return orElse();
  }
}

abstract class ToBookView implements RouterEvent {
  const factory ToBookView({required String bookUrl, required String title}) =
      _$ToBookView;

  String get bookUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToBookViewCopyWith<ToBookView> get copyWith =>
      throw _privateConstructorUsedError;
}
