import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:clinic_app/resources/resources.dart';

void main() {
  test('app_pngs assets test', () {
    expect(File(AppPngs.bell).existsSync(), isTrue);
    expect(File(AppPngs.board).existsSync(), isTrue);
    expect(File(AppPngs.car).existsSync(), isTrue);
    expect(File(AppPngs.hospital).existsSync(), isTrue);
    expect(File(AppPngs.speech).existsSync(), isTrue);
  });
}
