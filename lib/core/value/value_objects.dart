import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart' show toBeginningOfSentenceCase;
import 'package:meno_fe_v2/core/value/value_failure.dart';
import 'package:meno_fe_v2/core/value/value_object.dart';
import 'package:meno_fe_v2/core/value/value_validators.dart';

class IAvatar extends ValueObject<File?> {
  @override
  final Either<ValueFailure<File?>, File?> value;

  factory IAvatar(File? input) {
    if (input != null) {
      return IAvatar._(right(input));
    } else {
      return IAvatar._(right(null));
    }
  }

  const IAvatar._(this.value);
}

class IBio extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory IBio(String input) {
    return IBio._(validateBioLength(input));
  }

  const IBio._(this.value);
}

class IBroadcastDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory IBroadcastDescription(String input) {
    return IBroadcastDescription._(validateBroadcastDescription(input));
  }

  const IBroadcastDescription._(this.value);
}

class IBroadcastTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory IBroadcastTitle(String input) {
    return IBroadcastTitle._(validateNotEmpty(input));
  }

  const IBroadcastTitle._(this.value);
}

class IEmail extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory IEmail(String input) {
    final finalInput = input.toLowerCase().trim();
    return IEmail._(validateEmail(finalInput));
  }

  const IEmail._(this.value);
}

class IFullName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory IFullName(String input) {
    final finalInput = toBeginningOfSentenceCase(input);
    return IFullName._(validateNotEmpty(finalInput!));
  }

  const IFullName._(this.value);
}

class IOtp extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory IOtp(String input) {
    return IOtp._(validateOTP(input));
  }

  const IOtp._(this.value);
}

class IPassword extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  final bool isSignIn;

  factory IPassword(String input, {bool isSignIn = false}) {
    if (isSignIn) {
      return IPassword._(validateNotEmpty(input.trim()), isSignIn: isSignIn);
    } else {
      return IPassword._(validatePassword(input.trim()), isSignIn: isSignIn);
    }
  }

  const IPassword._(this.value, {this.isSignIn = false});
}
