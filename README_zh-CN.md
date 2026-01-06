# unique_id_dart

[English](README.md) | 中文

为 Dart 提供两种方式生成唯一 ID：

- 基于 Snowflake 的短数字 ID。
- 标准 UUID v4 字符串。

## 快速开始

添加依赖：

```yaml
dependencies:
  unique_id_dart: ^1.0.0
```

然后执行：

```sh
dart pub get
```

## 用法

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
  - `true`（默认）：返回 Snowflake 数字 ID。
  - `false`：返回 UUID v4 字符串。

## 备注

- Snowflake 内部固定 `workerId` 和 `datacenterId`。如需多节点唯一性配置，
  请考虑扩展接口或在本地 fork 调整。
- 运行测试：`dart test`。可参考 `example/` 中的可运行示例。
