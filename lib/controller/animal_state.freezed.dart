// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'animal_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AnimalState {
  dynamic get animals => throw _privateConstructorUsedError;
  bool get fetching => throw _privateConstructorUsedError;

  /// Create a copy of AnimalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnimalStateCopyWith<AnimalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimalStateCopyWith<$Res> {
  factory $AnimalStateCopyWith(
          AnimalState value, $Res Function(AnimalState) then) =
      _$AnimalStateCopyWithImpl<$Res, AnimalState>;
  @useResult
  $Res call({dynamic animals, bool fetching});
}

/// @nodoc
class _$AnimalStateCopyWithImpl<$Res, $Val extends AnimalState>
    implements $AnimalStateCopyWith<$Res> {
  _$AnimalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnimalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animals = freezed,
    Object? fetching = null,
  }) {
    return _then(_value.copyWith(
      animals: freezed == animals
          ? _value.animals
          : animals // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fetching: null == fetching
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnimalStateImplCopyWith<$Res>
    implements $AnimalStateCopyWith<$Res> {
  factory _$$AnimalStateImplCopyWith(
          _$AnimalStateImpl value, $Res Function(_$AnimalStateImpl) then) =
      __$$AnimalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic animals, bool fetching});
}

/// @nodoc
class __$$AnimalStateImplCopyWithImpl<$Res>
    extends _$AnimalStateCopyWithImpl<$Res, _$AnimalStateImpl>
    implements _$$AnimalStateImplCopyWith<$Res> {
  __$$AnimalStateImplCopyWithImpl(
      _$AnimalStateImpl _value, $Res Function(_$AnimalStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnimalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animals = freezed,
    Object? fetching = null,
  }) {
    return _then(_$AnimalStateImpl(
      animals: freezed == animals
          ? _value.animals
          : animals // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fetching: null == fetching
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AnimalStateImpl implements _AnimalState {
  _$AnimalStateImpl({required this.animals, required this.fetching});

  @override
  final dynamic animals;
  @override
  final bool fetching;

  @override
  String toString() {
    return 'AnimalState(animals: $animals, fetching: $fetching)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimalStateImpl &&
            const DeepCollectionEquality().equals(other.animals, animals) &&
            (identical(other.fetching, fetching) ||
                other.fetching == fetching));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(animals), fetching);

  /// Create a copy of AnimalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimalStateImplCopyWith<_$AnimalStateImpl> get copyWith =>
      __$$AnimalStateImplCopyWithImpl<_$AnimalStateImpl>(this, _$identity);
}

abstract class _AnimalState implements AnimalState {
  factory _AnimalState(
      {required final dynamic animals,
      required final bool fetching}) = _$AnimalStateImpl;

  @override
  dynamic get animals;
  @override
  bool get fetching;

  /// Create a copy of AnimalState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnimalStateImplCopyWith<_$AnimalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
