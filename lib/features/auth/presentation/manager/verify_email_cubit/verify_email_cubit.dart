import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repos/auth_repo.dart';
import '../../../../../core/errors/failure.dart';
import '../../../data/models/verify_email_request_body.dart';

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
            message: failure.message,
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
