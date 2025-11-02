import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/networking/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../data/repos/auth_repo.dart';

part 'log_out_cubit.freezed.dart';
part 'log_out_state.dart';

class LogOutCubit extends Cubit<LogOutState> {
  LogOutCubit({required this.authRepo})
    : super(const LogOutState.logOutInitial());
  final AuthRepo authRepo;

  Future<void> logOut() async {
    emit(const LogOutState.logOutLoading());
    final ApiResult result = await authRepo.logOut();
    result.when(
      success: (unit) {
        emit(const LogOutState.logOutSuccess());
      },
      failure: (apiErrorModel) {
        emit(LogOutState.logOutFailure(apiErrorModel: apiErrorModel));
      },
    );
  }
}
