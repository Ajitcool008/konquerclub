// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fighter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FighterModelImpl _$$FighterModelImplFromJson(Map<String, dynamic> json) =>
    _$FighterModelImpl(
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      count: json['count'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Fighter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FighterModelImplToJson(_$FighterModelImpl instance) =>
    <String, dynamic>{
      'next': instance.next,
      'previous': instance.previous,
      'count': instance.count,
      'results': instance.results,
    };

_$FighterImpl _$$FighterImplFromJson(Map<String, dynamic> json) =>
    _$FighterImpl(
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      usaBoxingId: json['usaBoxingId'] as String?,
      gender: json['gender'] as String?,
      weight: json['weight'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      numberOfFights: json['numberOfFights'] as int?,
      teamId: json['teamId'] as int?,
      gymName: json['gymName'] as String?,
      pictureThumb: json['picture_thumb'] as String?,
      isBoxer: json['isBoxer'] as bool?,
      isCoach: json['isCoach'] as bool?,
      isOfficial: json['isOfficial'] as bool?,
      isMatchmaker: json['isMatchmaker'] as bool?,
      isManagedAccount: json['isManagedAccount'] as bool?,
      id: json['id'] as int?,
      age: json['age'] as int?,
      gymLocationFull: json['gymLocationFull'] == null
          ? null
          : GymLocationFull.fromJson(
              json['gymLocationFull'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FighterImplToJson(_$FighterImpl instance) =>
    <String, dynamic>{
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'usaBoxingId': instance.usaBoxingId,
      'gender': instance.gender,
      'weight': instance.weight,
      'dateOfBirth': instance.dateOfBirth,
      'numberOfFights': instance.numberOfFights,
      'teamId': instance.teamId,
      'gymName': instance.gymName,
      'pictureThumb': instance.pictureThumb,
      'isBoxer': instance.isBoxer,
      'isCoach': instance.isCoach,
      'isOfficial': instance.isOfficial,
      'isMatchmaker': instance.isMatchmaker,
      'isManagedAccount': instance.isManagedAccount,
      'id': instance.id,
      'age': instance.age,
      'gymLocationFull': instance.gymLocationFull,
    };

_$GymLocationFullImpl _$$GymLocationFullImplFromJson(
        Map<String, dynamic> json) =>
    _$GymLocationFullImpl(
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      address: json['address'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zip: json['zip'] as String?,
    );

Map<String, dynamic> _$$GymLocationFullImplToJson(
        _$GymLocationFullImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'zip': instance.zip,
    };
