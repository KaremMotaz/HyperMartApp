import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/networking/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../data/models/register_request_body.dart';
import '../../../data/repos/auth_repo.dart';

part 'register_cubit.freezed.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.authRepo) : super(const RegisterState.registerInitial());

  final AuthRepo authRepo;

  Future<void> registerWithEmailAndPassword({
    required RegisterRequestBody registerRequestBody,
  }) async {
    emit(const RegisterState.registerLoading());
    final ApiResult result = await authRepo.registerWithEmailAndPassword(
      body: registerRequestBody,
    );
    result.when(
      success: (data) {
        emit(RegisterState.registerSuccess(email: registerRequestBody.email));
      },
      failure: (apiErrorModel) {
        emit(RegisterState.registerFailure(apiErrorModel: apiErrorModel));
      },
    );
  }
}
