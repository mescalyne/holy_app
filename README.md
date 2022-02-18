# holy_app

Генерация кода
Код генерируется через build runner для пакетов freezed, injectable, hive (для адаптеров) и graphql-запросов.

Для генерации graphql-запросов следует в папке lib/core/data/network/models создать .graphql-файл, добавить свой запрос и запустить генерацию.

Запуск билд раннера: flutter pub run build_runner watch --delete-conflicting-outputs для периодического ребилда или flutter pub run build_runner build --delete-conflicting-outputs
