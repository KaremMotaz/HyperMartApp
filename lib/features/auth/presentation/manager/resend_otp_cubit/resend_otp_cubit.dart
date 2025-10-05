import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../data/repos/auth_repo.dart';

import '../../../../../core/errors/failure.dart';
import '../../../data/models/resend_otp_request_body.dart';
part 'resend_otp_state.dart';

class ResendOtpCubit extends Cubit<ResendOtpState> {
  ResendOtpCubit({required this.authRepo}) : super(ResendOtpInitialState());

  final AuthRepo authRepo;

  Timer? _timer;
  int _remainingSeconds = 0;

  Future<void> resendOtp({required String email}) async {
    emit(ResendOtpLoadingState());

    final Either<Failure, Unit> result = await authRepo.resendOtp(
      body: ResendOtpRequestBody(email: email),
    );

    result.fold(
      (failure) {
        emit(
          ResendOtpFailureState(
            message: failure.message,
            details: failure.details,
          ),
        );
      },
      (unit) {
        emit(ResendOtpSuccessState());
        _startTimer();
      },
    );
  }

  void _startTimer() {
    _remainingSeconds = 600;
    emit(ResendOtpTimerState(_remainingSeconds));

    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingSeconds == 0) {
        timer.cancel();
        emit(ResendOtpAvailableState());
      } else {
        _remainingSeconds--;
        emit(ResendOtpTimerState(_remainingSeconds));
      }
    });
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
