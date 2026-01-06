# Repository Guidelines

## Project Structure & Module Organization
- `lib/unique_id_dart.dart` is the public library entrypoint; it re-exports `lib/src/unique_id.dart`.
- `lib/src/` contains internal implementation details that should not be imported directly.
- `test/` holds unit tests (Dart `package:test`).
- `example/` contains a runnable usage example.
- `analysis_options.yaml` defines linting rules; `pubspec.yaml` defines metadata and dependencies.

## Build, Test, and Development Commands
- `dart pub get`: install dependencies listed in `pubspec.yaml`.
- `dart analyze`: run static analysis using `analysis_options.yaml`.
- `dart format .`: apply standard Dart formatting.
- `dart test`: run all tests in `test/`.
- `dart run example/unique_id_dart_example.dart`: execute the example app.
- `dart pub publish --dry-run`: validate package readiness before publishing.

## Coding Style & Naming Conventions
- Use 2-space indentation and format via `dart format`.
- Follow `package:lints/recommended` as configured in `analysis_options.yaml`.
- File names: `lower_snake_case.dart`; classes/types: `UpperCamelCase`; methods/fields: `lowerCamelCase`.
- Keep the public API surface in `lib/unique_id_dart.dart` and place internal helpers in `lib/src/`.

## Testing Guidelines
- Use `package:test` with files named `*_test.dart` in `test/`.
- Cover both branches of `uniqueId({shorter})` (Snowflaker and UUID paths).
- Prefer small, focused tests with clear names (e.g., `unique_id_returns_uuid_when_shorter_false`).
- Run tests via `dart test` before opening a PR.

## Commit & Pull Request Guidelines
- This checkout has no Git history, so no existing convention was detected.
- Use concise, imperative commit subjects (e.g., "Add UUID option") and add a short body for behavioral changes.
- PRs should include: a short summary, linked issue (if any), test command output or a note explaining why tests were skipped.
- If publishing, update `CHANGELOG.md` and bump the version in `pubspec.yaml`.

## Configuration & Dependency Notes
- SDK constraint is `^3.10.3` in `pubspec.yaml`.
- Runtime dependencies: `snowflaker` and `uuid`. Keep versions in sync with usage and update tests when bumping.
