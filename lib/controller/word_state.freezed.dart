// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WordState {
  List<WordResponse> get words => throw _privateConstructorUsedError;
  bool get fetching => throw _privateConstructorUsedError;
  bool get data => throw _privateConstructorUsedError;

  /// Create a copy of WordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WordStateCopyWith<WordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordStateCopyWith<$Res> {
  factory $WordStateCopyWith(WordState value, $Res Function(WordState) then) =
      _$WordStateCopyWithImpl<$Res, WordState>;
  @useResult
  $Res call({List<WordResponse> words, bool fetching, bool data});
}

/// @nodoc
class _$WordStateCopyWithImpl<$Res, $Val extends WordState>
    implements $WordStateCopyWith<$Res> {
  _$WordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
    Object? fetching = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordResponse>,
      fetching: null == fetching
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordStateImplCopyWith<$Res>
    implements $WordStateCopyWith<$Res> {
  factory _$$WordStateImplCopyWith(
          _$WordStateImpl value, $Res Function(_$WordStateImpl) then) =
      __$$WordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WordResponse> words, bool fetching, bool data});
}

/// @nodoc
class __$$WordStateImplCopyWithImpl<$Res>
    extends _$WordStateCopyWithImpl<$Res, _$WordStateImpl>
    implements _$$WordStateImplCopyWith<$Res> {
  __$$WordStateImplCopyWithImpl(
      _$WordStateImpl _value, $Res Function(_$WordStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
    Object? fetching = null,
    Object? data = null,
  }) {
    return _then(_$WordStateImpl(
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordResponse>,
      fetching: null == fetching
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$WordStateImpl implements _WordState {
  _$WordStateImpl(
      {required final List<WordResponse> words,
      required this.fetching,
      required this.data})
      : _words = words;

  final List<WordResponse> _words;
  @override
  List<WordResponse> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  @override
  final bool fetching;
  @override
  final bool data;

  @override
  String toString() {
    return 'WordState(words: $words, fetching: $fetching, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordStateImpl &&
            const DeepCollectionEquality().equals(other._words, _words) &&
            (identical(other.fetching, fetching) ||
                other.fetching == fetching) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_words), fetching, data);

  /// Create a copy of WordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WordStateImplCopyWith<_$WordStateImpl> get copyWith =>
      __$$WordStateImplCopyWithImpl<_$WordStateImpl>(this, _$identity);
}

abstract class _WordState implements WordState {
  factory _WordState(
      {required final List<WordResponse> words,
      required final bool fetching,
      required final bool data}) = _$WordStateImpl;

  @override
  List<WordResponse> get words;
  @override
  bool get fetching;
  @override
  bool get data;

  /// Create a copy of WordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WordStateImplCopyWith<_$WordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
