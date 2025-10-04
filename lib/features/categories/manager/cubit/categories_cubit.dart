import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_mart_app/core/errors/failure.dart';
import 'package:hyper_mart_app/features/categories/data/categories_repo.dart';
import 'package:hyper_mart_app/features/categories/data/models/categories_response.dart';
part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit({required this.categoriesRepo})
    : super(CategoriesLoadingState());

  final CategoriesRepo categoriesRepo;

  Future<void> getCategories() async {
    final Either<Failure, CategoriesResponse> result = await categoriesRepo
        .getCategories();

    result.fold(
      (failure) {
        emit(
          CategoriesFailureState(
            message: failure.message,
            details: failure.details,
          ),
        );
      },
      (categoriesResponse) {
        emit(CategoriesSuccessState(categoriesResponse: categoriesResponse));
      },
    );
  }
}
