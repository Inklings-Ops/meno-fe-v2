enum OtpType { resetPassword, verifyEmail }

extension OtpTypeExtension on OtpType {
  String get name {
    switch (this) {
      case OtpType.resetPassword:
        return 'reset-password';
      case OtpType.verifyEmail:
      default:
        return 'verify-email';
    }
  }
}
