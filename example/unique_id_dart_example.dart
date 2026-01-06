import 'package:unique_id_dart/unique_id_dart.dart';

void main() {
  String shortId = uniqueId();
  print('Generated Unique ID: $shortId');

  String longId = uniqueId(shorter: false);
  print('Generated Long Unique ID: $longId');
}
