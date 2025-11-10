import 'package:flutter_bloc/flutter_bloc.dart';

class ReviewSheetCubit extends Cubit<double> {
  ReviewSheetCubit() : super(0.0);
  void openSheet() => emit(0.55);
  void closeSheet() => emit(0.0);

  int userRating = 0;

  void setUserRating({required int rating}) => userRating = rating;

  bool get isOpen => state > 0;
}
