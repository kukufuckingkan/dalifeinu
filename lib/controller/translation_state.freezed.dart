// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TranslationState {
  bool get fetching => throw _privateConstructorUsedError;
  List<TranslationResponse> get translations =>
      throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  /// Create a copy of TranslationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TranslationStateCopyWith<TranslationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationStateCopyWith<$Res> {
  factory $TranslationStateCopyWith(
          TranslationState value, $Res Function(TranslationState) then) =
      _$TranslationStateCopyWithImpl<$Res, TranslationState>;
  @useResult
  $Res call(
      {bool fetching, List<TranslationResponse> translations, String error});
}

/// @nodoc
class _$TranslationStateCopyWithImpl<$Res, $Val extends TranslationState>
    implements $TranslationStateCopyWith<$Res> {
  _$TranslationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TranslationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetching = null,
    Object? translations = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      fetching: null == fetching
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as bool,
      translations: null == translations
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<TranslationResponse>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TranslationStateImplCopyWith<$Res>
    implements $TranslationStateCopyWith<$Res> {
  factory _$$TranslationStateImplCopyWith(_$TranslationStateImpl value,
          $Res Function(_$TranslationStateImpl) then) =
      __$$TranslationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool fetching, List<TranslationResponse> translations, String error});
}

/// @nodoc
class __$$TranslationStateImplCopyWithImpl<$Res>
    extends _$TranslationStateCopyWithImpl<$Res, _$TranslationStateImpl>
    implements _$$TranslationStateImplCopyWith<$Res> {
  __$$TranslationStateImplCopyWithImpl(_$TranslationStateImpl _value,
      $Res Function(_$TranslationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TranslationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetching = null,
    Object? translations = null,
    Object? error = null,
  }) {
    return _then(_$TranslationStateImpl(
      fetching: null == fetching
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as bool,
      translations: null == translations
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<TranslationResponse>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TranslationStateImpl implements _TranslationState {
  _$TranslationStateImpl(
      {required this.fetching,
      required final List<TranslationResponse> translations,
      required this.error})
      : _translations = translations;

  @override
  final bool fetching;
  final List<TranslationResponse> _translations;
  @override
  List<TranslationResponse> get translations {
    if (_translations is EqualUnmodifiableListView) return _translations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_translations);
  }

  @override
  final String error;

  @override
  String toString() {
    return 'TranslationState(fetching: $fetching, translations: $translations, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslationStateImpl &&
            (identical(other.fetching, fetching) ||
                other.fetching == fetching) &&
            const DeepCollectionEquality()
                .equals(other._translations, _translations) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetching,
      const DeepCollectionEquality().hash(_translations), error);

  /// Create a copy of TranslationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslationStateImplCopyWith<_$TranslationStateImpl> get copyWith =>
      __$$TranslationStateImplCopyWithImpl<_$TranslationStateImpl>(
          this, _$identity);
}

abstract class _TranslationState implements TranslationState {
  factory _TranslationState(
      {required final bool fetching,
      required final List<TranslationResponse> translations,
      required final String error}) = _$TranslationStateImpl;

  @override
  bool get fetching;
  @override
  List<TranslationResponse> get translations;
  @override
  String get error;

  /// Create a copy of TranslationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TranslationStateImplCopyWith<_$TranslationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
