import 'package:examy/config/base_response/base_response.dart';
import 'package:examy/feature/forgot_password/domain/entities/forgot_password_entity.dart';
import 'package:examy/feature/forgot_password/domain/entities/message_entity.dart';
import 'package:examy/feature/forgot_password/domain/entities/reset_password_entity.dart';
import 'package:examy/feature/forgot_password/domain/entities/verify_reset_code_entity.dart';

abstract class ForgotPasswordRepo {
  Future<BaseResponse<MessageEntity>> forgotPassword({
    required ForgotPasswordEntity forgotPasswordEntity,
  });

  Future<BaseResponse<MessageEntity>> verifyResetCode({
    required VerifyResetCodeEntity verifyResetCodeEntity,
  });

  Future<BaseResponse<MessageEntity>> resetPassword({
    required ResetPasswordEntity resetPasswordEntity,
  });
}
