import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/features/auth/data/models/register_request_body.dart';
import '../../../../../core/errors/failure.dart';
import '../../../domain/auth_repo.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.authRepo) : super(RegisterInitialState());

  final AuthRepo authRepo;

  Future<void> registerWithEmailAndPassword({
    required RegisterRequestBody registerRequestBody,
  }) async {
    emit(RegisterLoadingState());
    final Either<Failure, Unit> result = await authRepo
        .registerWithEmailAndPassword(body: registerRequestBody);
    result.fold(
      (failure) {
        emit(
          RegisterFailureState(
            message: failure.message,
            details: failure.details,
          ),
        );
      },
      (unit) async {
        emit(RegisterSuccessState(email: registerRequestBody.email));
      },
    );
  }
}
