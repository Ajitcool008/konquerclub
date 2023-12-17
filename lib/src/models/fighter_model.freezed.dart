// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fighter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FighterModel _$FighterModelFromJson(Map<String, dynamic> json) {
  return _FighterModel.fromJson(json);
}

/// @nodoc
mixin _$FighterModel {
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  List<Fighter>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FighterModelCopyWith<FighterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FighterModelCopyWith<$Res> {
  factory $FighterModelCopyWith(
          FighterModel value, $Res Function(FighterModel) then) =
      _$FighterModelCopyWithImpl<$Res, FighterModel>;
  @useResult
  $Res call(
      {String? next, String? previous, int? count, List<Fighter>? results});
}

/// @nodoc
class _$FighterModelCopyWithImpl<$Res, $Val extends FighterModel>
    implements $FighterModelCopyWith<$Res> {
  _$FighterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? next = freezed,
    Object? previous = freezed,
    Object? count = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Fighter>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FighterModelImplCopyWith<$Res>
    implements $FighterModelCopyWith<$Res> {
  factory _$$FighterModelImplCopyWith(
          _$FighterModelImpl value, $Res Function(_$FighterModelImpl) then) =
      __$$FighterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? next, String? previous, int? count, List<Fighter>? results});
}

/// @nodoc
class __$$FighterModelImplCopyWithImpl<$Res>
    extends _$FighterModelCopyWithImpl<$Res, _$FighterModelImpl>
    implements _$$FighterModelImplCopyWith<$Res> {
  __$$FighterModelImplCopyWithImpl(
      _$FighterModelImpl _value, $Res Function(_$FighterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? next = freezed,
    Object? previous = freezed,
    Object? count = freezed,
    Object? results = freezed,
  }) {
    return _then(_$FighterModelImpl(
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Fighter>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FighterModelImpl implements _FighterModel {
  _$FighterModelImpl(
      {this.next, this.previous, this.count, final List<Fighter>? results})
      : _results = results;

  factory _$FighterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FighterModelImplFromJson(json);

  @override
  final String? next;
  @override
  final String? previous;
  @override
  final int? count;
  final List<Fighter>? _results;
  @override
  List<Fighter>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FighterModel(next: $next, previous: $previous, count: $count, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FighterModelImpl &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, next, previous, count,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FighterModelImplCopyWith<_$FighterModelImpl> get copyWith =>
      __$$FighterModelImplCopyWithImpl<_$FighterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FighterModelImplToJson(
      this,
    );
  }
}

abstract class _FighterModel implements FighterModel {
  factory _FighterModel(
      {final String? next,
      final String? previous,
      final int? count,
      final List<Fighter>? results}) = _$FighterModelImpl;

  factory _FighterModel.fromJson(Map<String, dynamic> json) =
      _$FighterModelImpl.fromJson;

  @override
  String? get next;
  @override
  String? get previous;
  @override
  int? get count;
  @override
  List<Fighter>? get results;
  @override
  @JsonKey(ignore: true)
  _$$FighterModelImplCopyWith<_$FighterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Fighter _$FighterFromJson(Map<String, dynamic> json) {
  return _Fighter.fromJson(json);
}

/// @nodoc
mixin _$Fighter {
  String? get first_name =>
      throw _privateConstructorUsedError; // Update key to match API response
  String? get last_name =>
      throw _privateConstructorUsedError; // Update key to match API response
  String? get usaBoxingId => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get weight => throw _privateConstructorUsedError;
  String? get dateOfBirth => throw _privateConstructorUsedError;
  int? get numberOfFights => throw _privateConstructorUsedError;
  int? get teamId => throw _privateConstructorUsedError;
  String? get gymName => throw _privateConstructorUsedError;
  String? get pictureThumb => throw _privateConstructorUsedError;
  bool? get isBoxer => throw _privateConstructorUsedError;
  bool? get isCoach => throw _privateConstructorUsedError;
  bool? get isOfficial => throw _privateConstructorUsedError;
  bool? get isMatchmaker => throw _privateConstructorUsedError;
  bool? get isManagedAccount => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  GymLocationFull? get gymLocationFull => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FighterCopyWith<Fighter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FighterCopyWith<$Res> {
  factory $FighterCopyWith(Fighter value, $Res Function(Fighter) then) =
      _$FighterCopyWithImpl<$Res, Fighter>;
  @useResult
  $Res call(
      {String? first_name,
      String? last_name,
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
      GymLocationFull? gymLocationFull});

  $GymLocationFullCopyWith<$Res>? get gymLocationFull;
}

/// @nodoc
class _$FighterCopyWithImpl<$Res, $Val extends Fighter>
    implements $FighterCopyWith<$Res> {
  _$FighterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? usaBoxingId = freezed,
    Object? gender = freezed,
    Object? weight = freezed,
    Object? dateOfBirth = freezed,
    Object? numberOfFights = freezed,
    Object? teamId = freezed,
    Object? gymName = freezed,
    Object? pictureThumb = freezed,
    Object? isBoxer = freezed,
    Object? isCoach = freezed,
    Object? isOfficial = freezed,
    Object? isMatchmaker = freezed,
    Object? isManagedAccount = freezed,
    Object? id = freezed,
    Object? age = freezed,
    Object? gymLocationFull = freezed,
  }) {
    return _then(_value.copyWith(
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      usaBoxingId: freezed == usaBoxingId
          ? _value.usaBoxingId
          : usaBoxingId // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfFights: freezed == numberOfFights
          ? _value.numberOfFights
          : numberOfFights // ignore: cast_nullable_to_non_nullable
              as int?,
      teamId: freezed == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int?,
      gymName: freezed == gymName
          ? _value.gymName
          : gymName // ignore: cast_nullable_to_non_nullable
              as String?,
      pictureThumb: freezed == pictureThumb
          ? _value.pictureThumb
          : pictureThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      isBoxer: freezed == isBoxer
          ? _value.isBoxer
          : isBoxer // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCoach: freezed == isCoach
          ? _value.isCoach
          : isCoach // ignore: cast_nullable_to_non_nullable
              as bool?,
      isOfficial: freezed == isOfficial
          ? _value.isOfficial
          : isOfficial // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMatchmaker: freezed == isMatchmaker
          ? _value.isMatchmaker
          : isMatchmaker // ignore: cast_nullable_to_non_nullable
              as bool?,
      isManagedAccount: freezed == isManagedAccount
          ? _value.isManagedAccount
          : isManagedAccount // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gymLocationFull: freezed == gymLocationFull
          ? _value.gymLocationFull
          : gymLocationFull // ignore: cast_nullable_to_non_nullable
              as GymLocationFull?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GymLocationFullCopyWith<$Res>? get gymLocationFull {
    if (_value.gymLocationFull == null) {
      return null;
    }

    return $GymLocationFullCopyWith<$Res>(_value.gymLocationFull!, (value) {
      return _then(_value.copyWith(gymLocationFull: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FighterImplCopyWith<$Res> implements $FighterCopyWith<$Res> {
  factory _$$FighterImplCopyWith(
          _$FighterImpl value, $Res Function(_$FighterImpl) then) =
      __$$FighterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? first_name,
      String? last_name,
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
      GymLocationFull? gymLocationFull});

  @override
  $GymLocationFullCopyWith<$Res>? get gymLocationFull;
}

/// @nodoc
class __$$FighterImplCopyWithImpl<$Res>
    extends _$FighterCopyWithImpl<$Res, _$FighterImpl>
    implements _$$FighterImplCopyWith<$Res> {
  __$$FighterImplCopyWithImpl(
      _$FighterImpl _value, $Res Function(_$FighterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? usaBoxingId = freezed,
    Object? gender = freezed,
    Object? weight = freezed,
    Object? dateOfBirth = freezed,
    Object? numberOfFights = freezed,
    Object? teamId = freezed,
    Object? gymName = freezed,
    Object? pictureThumb = freezed,
    Object? isBoxer = freezed,
    Object? isCoach = freezed,
    Object? isOfficial = freezed,
    Object? isMatchmaker = freezed,
    Object? isManagedAccount = freezed,
    Object? id = freezed,
    Object? age = freezed,
    Object? gymLocationFull = freezed,
  }) {
    return _then(_$FighterImpl(
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      usaBoxingId: freezed == usaBoxingId
          ? _value.usaBoxingId
          : usaBoxingId // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfFights: freezed == numberOfFights
          ? _value.numberOfFights
          : numberOfFights // ignore: cast_nullable_to_non_nullable
              as int?,
      teamId: freezed == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as int?,
      gymName: freezed == gymName
          ? _value.gymName
          : gymName // ignore: cast_nullable_to_non_nullable
              as String?,
      pictureThumb: freezed == pictureThumb
          ? _value.pictureThumb
          : pictureThumb // ignore: cast_nullable_to_non_nullable
              as String?,
      isBoxer: freezed == isBoxer
          ? _value.isBoxer
          : isBoxer // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCoach: freezed == isCoach
          ? _value.isCoach
          : isCoach // ignore: cast_nullable_to_non_nullable
              as bool?,
      isOfficial: freezed == isOfficial
          ? _value.isOfficial
          : isOfficial // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMatchmaker: freezed == isMatchmaker
          ? _value.isMatchmaker
          : isMatchmaker // ignore: cast_nullable_to_non_nullable
              as bool?,
      isManagedAccount: freezed == isManagedAccount
          ? _value.isManagedAccount
          : isManagedAccount // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gymLocationFull: freezed == gymLocationFull
          ? _value.gymLocationFull
          : gymLocationFull // ignore: cast_nullable_to_non_nullable
              as GymLocationFull?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FighterImpl implements _Fighter {
  _$FighterImpl(
      {required this.first_name,
      required this.last_name,
      this.usaBoxingId,
      this.gender,
      this.weight,
      this.dateOfBirth,
      this.numberOfFights,
      this.teamId,
      this.gymName,
      this.pictureThumb,
      this.isBoxer,
      this.isCoach,
      this.isOfficial,
      this.isMatchmaker,
      this.isManagedAccount,
      this.id,
      this.age,
      this.gymLocationFull});

  factory _$FighterImpl.fromJson(Map<String, dynamic> json) =>
      _$$FighterImplFromJson(json);

  @override
  final String? first_name;
// Update key to match API response
  @override
  final String? last_name;
// Update key to match API response
  @override
  final String? usaBoxingId;
  @override
  final String? gender;
  @override
  final String? weight;
  @override
  final String? dateOfBirth;
  @override
  final int? numberOfFights;
  @override
  final int? teamId;
  @override
  final String? gymName;
  @override
  final String? pictureThumb;
  @override
  final bool? isBoxer;
  @override
  final bool? isCoach;
  @override
  final bool? isOfficial;
  @override
  final bool? isMatchmaker;
  @override
  final bool? isManagedAccount;
  @override
  final int? id;
  @override
  final int? age;
  @override
  final GymLocationFull? gymLocationFull;

  @override
  String toString() {
    return 'Fighter(first_name: $first_name, last_name: $last_name, usaBoxingId: $usaBoxingId, gender: $gender, weight: $weight, dateOfBirth: $dateOfBirth, numberOfFights: $numberOfFights, teamId: $teamId, gymName: $gymName, pictureThumb: $pictureThumb, isBoxer: $isBoxer, isCoach: $isCoach, isOfficial: $isOfficial, isMatchmaker: $isMatchmaker, isManagedAccount: $isManagedAccount, id: $id, age: $age, gymLocationFull: $gymLocationFull)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FighterImpl &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.usaBoxingId, usaBoxingId) ||
                other.usaBoxingId == usaBoxingId) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.numberOfFights, numberOfFights) ||
                other.numberOfFights == numberOfFights) &&
            (identical(other.teamId, teamId) || other.teamId == teamId) &&
            (identical(other.gymName, gymName) || other.gymName == gymName) &&
            (identical(other.pictureThumb, pictureThumb) ||
                other.pictureThumb == pictureThumb) &&
            (identical(other.isBoxer, isBoxer) || other.isBoxer == isBoxer) &&
            (identical(other.isCoach, isCoach) || other.isCoach == isCoach) &&
            (identical(other.isOfficial, isOfficial) ||
                other.isOfficial == isOfficial) &&
            (identical(other.isMatchmaker, isMatchmaker) ||
                other.isMatchmaker == isMatchmaker) &&
            (identical(other.isManagedAccount, isManagedAccount) ||
                other.isManagedAccount == isManagedAccount) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gymLocationFull, gymLocationFull) ||
                other.gymLocationFull == gymLocationFull));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      first_name,
      last_name,
      usaBoxingId,
      gender,
      weight,
      dateOfBirth,
      numberOfFights,
      teamId,
      gymName,
      pictureThumb,
      isBoxer,
      isCoach,
      isOfficial,
      isMatchmaker,
      isManagedAccount,
      id,
      age,
      gymLocationFull);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FighterImplCopyWith<_$FighterImpl> get copyWith =>
      __$$FighterImplCopyWithImpl<_$FighterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FighterImplToJson(
      this,
    );
  }
}

abstract class _Fighter implements Fighter {
  factory _Fighter(
      {required final String? first_name,
      required final String? last_name,
      final String? usaBoxingId,
      final String? gender,
      final String? weight,
      final String? dateOfBirth,
      final int? numberOfFights,
      final int? teamId,
      final String? gymName,
      final String? pictureThumb,
      final bool? isBoxer,
      final bool? isCoach,
      final bool? isOfficial,
      final bool? isMatchmaker,
      final bool? isManagedAccount,
      final int? id,
      final int? age,
      final GymLocationFull? gymLocationFull}) = _$FighterImpl;

  factory _Fighter.fromJson(Map<String, dynamic> json) = _$FighterImpl.fromJson;

  @override
  String? get first_name;
  @override // Update key to match API response
  String? get last_name;
  @override // Update key to match API response
  String? get usaBoxingId;
  @override
  String? get gender;
  @override
  String? get weight;
  @override
  String? get dateOfBirth;
  @override
  int? get numberOfFights;
  @override
  int? get teamId;
  @override
  String? get gymName;
  @override
  String? get pictureThumb;
  @override
  bool? get isBoxer;
  @override
  bool? get isCoach;
  @override
  bool? get isOfficial;
  @override
  bool? get isMatchmaker;
  @override
  bool? get isManagedAccount;
  @override
  int? get id;
  @override
  int? get age;
  @override
  GymLocationFull? get gymLocationFull;
  @override
  @JsonKey(ignore: true)
  _$$FighterImplCopyWith<_$FighterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GymLocationFull _$GymLocationFullFromJson(Map<String, dynamic> json) {
  return _GymLocationFull.fromJson(json);
}

/// @nodoc
mixin _$GymLocationFull {
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get zip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GymLocationFullCopyWith<GymLocationFull> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GymLocationFullCopyWith<$Res> {
  factory $GymLocationFullCopyWith(
          GymLocationFull value, $Res Function(GymLocationFull) then) =
      _$GymLocationFullCopyWithImpl<$Res, GymLocationFull>;
  @useResult
  $Res call(
      {double? lat,
      double? lng,
      String? address,
      String? city,
      String? state,
      String? zip});
}

/// @nodoc
class _$GymLocationFullCopyWithImpl<$Res, $Val extends GymLocationFull>
    implements $GymLocationFullCopyWith<$Res> {
  _$GymLocationFullCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zip = freezed,
  }) {
    return _then(_value.copyWith(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: freezed == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GymLocationFullImplCopyWith<$Res>
    implements $GymLocationFullCopyWith<$Res> {
  factory _$$GymLocationFullImplCopyWith(_$GymLocationFullImpl value,
          $Res Function(_$GymLocationFullImpl) then) =
      __$$GymLocationFullImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? lat,
      double? lng,
      String? address,
      String? city,
      String? state,
      String? zip});
}

/// @nodoc
class __$$GymLocationFullImplCopyWithImpl<$Res>
    extends _$GymLocationFullCopyWithImpl<$Res, _$GymLocationFullImpl>
    implements _$$GymLocationFullImplCopyWith<$Res> {
  __$$GymLocationFullImplCopyWithImpl(
      _$GymLocationFullImpl _value, $Res Function(_$GymLocationFullImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zip = freezed,
  }) {
    return _then(_$GymLocationFullImpl(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: freezed == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GymLocationFullImpl implements _GymLocationFull {
  _$GymLocationFullImpl(
      {this.lat, this.lng, this.address, this.city, this.state, this.zip});

  factory _$GymLocationFullImpl.fromJson(Map<String, dynamic> json) =>
      _$$GymLocationFullImplFromJson(json);

  @override
  final double? lat;
  @override
  final double? lng;
  @override
  final String? address;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? zip;

  @override
  String toString() {
    return 'GymLocationFull(lat: $lat, lng: $lng, address: $address, city: $city, state: $state, zip: $zip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GymLocationFullImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zip, zip) || other.zip == zip));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, lat, lng, address, city, state, zip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GymLocationFullImplCopyWith<_$GymLocationFullImpl> get copyWith =>
      __$$GymLocationFullImplCopyWithImpl<_$GymLocationFullImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GymLocationFullImplToJson(
      this,
    );
  }
}

abstract class _GymLocationFull implements GymLocationFull {
  factory _GymLocationFull(
      {final double? lat,
      final double? lng,
      final String? address,
      final String? city,
      final String? state,
      final String? zip}) = _$GymLocationFullImpl;

  factory _GymLocationFull.fromJson(Map<String, dynamic> json) =
      _$GymLocationFullImpl.fromJson;

  @override
  double? get lat;
  @override
  double? get lng;
  @override
  String? get address;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get zip;
  @override
  @JsonKey(ignore: true)
  _$$GymLocationFullImplCopyWith<_$GymLocationFullImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
