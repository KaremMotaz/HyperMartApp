import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/helpers/constants.dart';
import '../../../../../core/networking/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/services/cache_helper.dart';
import '../../../data/models/login_request_body.dart';
import '../../../data/models/login_response.dart';
import '../../../data/repos/auth_repo.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.authRepo}) : super(const LoginState.loginInitial());

  final AuthRepo authRepo;
  bool isSelected = false;

  void setRememberMe({required bool isSelected}) {
    this.isSelected = isSelected;
    emit(const LoginState.loginInitial());
  }

  Future<void> loginWithEmailAndPassword({
    required LoginRequestBody loginRequestBody,
  }) async {
    emit(const LoginState.loginLoading());

    final ApiResult<LoginResponse> result = await authRepo
        .loginWithEmailAndPassword(body: loginRequestBody);

    result.when(
      success: (data) {
        CacheHelper.set(key: kRememberMe, value: isSelected);
        emit(const LoginState.loginSuccess());
      },
      failure: (apiErrorModel) {
        emit(LoginState.loginFailure(apiErrorModel: apiErrorModel));
      },
    );
  }
}
