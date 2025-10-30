import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/networking/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../data/models/change_password_request_body.dart';
import '../../../data/repos/auth_repo.dart';

part 'change_password_cubit.freezed.dart';
part 'change_password_state.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  ChangePasswordCubit({required this.authRepo})
    : super(const ChangePasswordState.changePasswordInitial());
  final AuthRepo authRepo;

  Future<void> changePassword({
    required ChangePasswordRequestBody changePasswordRequestBody,
  }) async {
    emit(const ChangePasswordState.changePasswordLoading());

    final ApiResult result = await authRepo.changePassword(
      body: changePasswordRequestBody,
    );

    result.when(
      success: (unit) {
        emit(const ChangePasswordState.changePasswordSuccess());
      },
      failure: (apiErrorModel) {
        emit(
          ChangePasswordState.changePasswordFailure(
            apiErrorModel: apiErrorModel,
          ),
        );
      },
    );
  }
}
