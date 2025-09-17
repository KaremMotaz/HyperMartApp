import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/errors/failure.dart';
import 'package:hyper_mart_app/features/auth/data/models/verify_email_request_body.dart';
import 'package:hyper_mart_app/features/auth/domain/auth_repo.dart';
part 'verify_email_state.dart';

class VerifyEmailCubit extends Cubit<VerifyEmailState> {
  VerifyEmailCubit({required this.authRepo}) : super(VerifyEmailInitialState());
  final AuthRepo authRepo;

  Future<void> verifyEmail({
    required VerifyEmailRequestBody verifyEmailRequestBody,
  }) async {
    emit(VerifyEmailLoadingState());
    final Either<Failure, Unit> result = await authRepo.verifyEmail(
      body: verifyEmailRequestBody,
    );
    result.fold(
      (failure) {
        emit(
          VerifyEmailFailureState(
            errorMessage: failure.message,
            details: failure.details,
          ),
        );
      },
      (unit) async {
        emit(VerifyEmailSuccessState());
      },
    );
  }
}
