import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

enum WeatherCondition {
  clear,
  rainy,
  cloudy,
  snowy,
  unknown,
}

@JsonSerializable()
class Weather extends Equatable {
  const Weather({
    required this.location,
    required this.temperature,
    required this.condition,
  });

  final String? location;
  final double temperature;
  final WeatherCondition condition;

  @override
  List<Object?> get props => [location, temperature, condition];
}
