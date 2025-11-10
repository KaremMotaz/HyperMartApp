import 'package:json_annotation/json_annotation.dart';
part 'get_reviews_response.g.dart';

@JsonSerializable(explicitToJson: true)
class GetReviewsResponse {
  final String message;
  final double averageRating;
  final int reviewsCount;
  final ReviewsData reviews;

  GetReviewsResponse({
    required this.message,
    required this.averageRating,
    required this.reviewsCount,
    required this.reviews,
  });

  factory GetReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetReviewsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetReviewsResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReviewsData {
  final List<ReviewItem> items;
  final int page;
  final int pageSize;
  final int totalCount;
  final bool hasNextPage;
  final bool hasPreviousPage;

  ReviewsData({
    required this.items,
    required this.page,
    required this.pageSize,
    required this.totalCount,
    required this.hasNextPage,
    required this.hasPreviousPage,
  });

  factory ReviewsData.fromJson(Map<String, dynamic> json) =>
      _$ReviewsDataFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewsDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReviewItem {
  final String comment;
  final int rating;
  final String createdAt;
  final String userName;
  final String? userPicture;

  ReviewItem({
    required this.comment,
    required this.rating,
    required this.createdAt,
    required this.userName,
    this.userPicture,
  });

  factory ReviewItem.fromJson(Map<String, dynamic> json) =>
      _$ReviewItemFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewItemToJson(this);
}
