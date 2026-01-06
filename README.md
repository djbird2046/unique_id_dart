# unique_id_dart

English | [中文](README_zh-CN.md)

Generate unique IDs in Dart using two strategies:

- Short numeric IDs based on Snowflake.
- Standard UUID v4 strings.

## Getting started

Add the dependency:

```yaml
dependencies:
  unique_id_dart: ^1.0.0
```

Then run:

```sh
dart pub get
```

## Usage

```dart
import 'package:unique_id_dart/unique_id_dart.dart';

void main() {
  final shortId = uniqueId();
  final longId = uniqueId(shorter: false);

  print(shortId);
  print(longId);
}
```

## API

- `uniqueId({bool shorter = true})`
  - `true` (default): Snowflake-based numeric ID.
  - `false`: UUID v4 string.

## Notes

- Snowflake uses a fixed `workerId` and `datacenterId` internally. If you need
  multi-node uniqueness guarantees, consider exposing configuration or forking.
- Run tests with `dart test`. See `example/` for a runnable demo.
