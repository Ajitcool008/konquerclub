import 'package:freezed_annotation/freezed_annotation.dart';

part 'fighter_model.freezed.dart';
part 'fighter_model.g.dart';

@freezed
class FighterModel with _$FighterModel {
  factory FighterModel({
    String? next,
    String? previous,
    int? count,
    List<Fighter>? results,
  }) = _FighterModel;

  factory FighterModel.fromJson(Map<String, dynamic> json) =>
      _$FighterModelFromJson(json);
}

@freezed
class Fighter with _$Fighter {
  factory Fighter({
    required String? first_name, // Update key to match API response
    required String? last_name, // Update key to match API response
    String? usaBoxingId,
    String? gender,
    String? weight,
    String? dateOfBirth,
    int? numberOfFights,
    int? teamId,
    String? gymName,
    String? pictureThumb,
    bool? isBoxer,
    bool? isCoach,
    bool? isOfficial,
    bool? isMatchmaker,
    bool? isManagedAccount,
    int? id,
    int? age,
    GymLocationFull? gymLocationFull,
  }) = _Fighter;

  factory Fighter.fromJson(Map<String, dynamic> json) =>
      _$FighterFromJson(json);
}

@freezed
class GymLocationFull with _$GymLocationFull {
  factory GymLocationFull({
    double? lat,
    double? lng,
    String? address,
    String? city,
    String? state,
    String? zip,
  }) = _GymLocationFull;

  factory GymLocationFull.fromJson(Map<String, dynamic> json) =>
      _$GymLocationFullFromJson(json);
}
