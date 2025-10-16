import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/networking/api_error_model.dart';
import '../../../data/repos/auth_repo.dart';
import '../../../data/models/verify_email_request_body.dart';
part 'verify_email_state.dart';
part 'verify_email_cubit.freezed.dart';

class VerifyEmailCubit extends Cubit<VerifyEmailState> {
  VerifyEmailCubit({required this.authRepo})
    : super(const VerifyEmailState.verifyEmailInitial());
  final AuthRepo authRepo;

  Future<void> verifyEmail({
    required VerifyEmailRequestBody verifyEmailRequestBody,
  }) async {
    emit(const VerifyEmailState.verifyEmailLoading());
    final ApiResult result = await authRepo.verifyEmail(
      body: verifyEmailRequestBody,
    );
    result.when(
      success: (unit) {
        emit(const VerifyEmailState.verifyEmailSuccess());
      },
      failure: (apiErrorModel) {
        emit(VerifyEmailState.verifyEmailFailure(apiErrorModel: apiErrorModel));
      },
    );
  }
}
