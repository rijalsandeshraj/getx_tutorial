class StoreReview {
  final String name;
  final String review;

  StoreReview({required this.name, required this.review});

  StoreReview copyWith({
    String? name,
    String? review,
  }) =>
      StoreReview(
        name: name ?? this.name,
        review: review ?? this.review,
      );

  factory StoreReview.fromJson(Map<String, dynamic> json) => StoreReview(
        name: json['name'],
        review: json['review'],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "review": review,
      };

  // TODO: implement props
  List<Object?> get props => [name, review];
}
