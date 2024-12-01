class Rating {
  final double rate;
  final int count;

  Rating({
    required this.rate,
    required this.count,
  });

  // Factory constructor to create a Rating from a JSON map
  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      rate: json['rate'].toDouble(),
      count: json['count'],
    );
  }

  // Method to convert Rating to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'rate': rate,
      'count': count,
    };
  }
  }