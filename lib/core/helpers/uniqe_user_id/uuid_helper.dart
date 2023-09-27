// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

@immutable
class UuidHelper {
  const UuidHelper._();

  static String generateID() {
    const uuidObject = Uuid();

    return uuidObject.v1();
  }
}
