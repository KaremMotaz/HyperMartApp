import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/networking/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../data/repos/auth_repo.dart';
import '../../../data/models/resend_otp_request_body.dart';
part 'resend_otp_state.dart';
part 'resend_otp_cubit.freezed.dart';

class ResendOtpCubit extends Cubit<ResendOtpState> {
  ResendOtpCubit({required this.authRepo})
    : super(const ResendOtpState.resendOtpInitial());

  final AuthRepo authRepo;

  Timer? _timer;
  int _remainingSeconds = 0;

  Future<void> resendOtp({required String email}) async {
    emit(const ResendOtpState.resendOtpLoading());

    final ApiResult result = await authRepo.resendOtp(
      body: ResendOtpRequestBody(email: email),
    );

    result.when(
      success: (unit) {
        emit(const ResendOtpState.resendOtpSuccess(remainingSeconds: 60));
        _startTimer();
      },
      failure: (apiErrorModel) {
        emit(ResendOtpState.resendOtpFailure(apiErrorModel: apiErrorModel));
      },
    );
  }

  void _startTimer() {
    _remainingSeconds = 600;
    emit(ResendOtpState.resendOtpTimer(remainingSeconds: _remainingSeconds));

    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingSeconds == 0) {
        timer.cancel();
        emit(const ResendOtpState.resendOtpAvailable());
      } else {
        _remainingSeconds--;
        emit(
          ResendOtpState.resendOtpTimer(remainingSeconds: _remainingSeconds),
        );
      }
    });
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
