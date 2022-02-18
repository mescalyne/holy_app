import 'package:afon_app/src/core/domain/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class EldersEvent with _$EldersEvent {
  const factory EldersEvent.onLoad() = OnLoad;
  const factory EldersEvent.toFirstPage() = ToFirstPage;
  const factory EldersEvent.onError() = OnError;
  const factory EldersEvent.toElder(AuthorDto author) = ToElder;
}
