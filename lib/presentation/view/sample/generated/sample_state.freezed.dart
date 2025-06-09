// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../sample_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SampleState {

 List<SampleModel> get samples; Status get getSamplesStatus; CustomException get getSamplesException;
/// Create a copy of SampleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SampleStateCopyWith<SampleState> get copyWith => _$SampleStateCopyWithImpl<SampleState>(this as SampleState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SampleState&&const DeepCollectionEquality().equals(other.samples, samples)&&(identical(other.getSamplesStatus, getSamplesStatus) || other.getSamplesStatus == getSamplesStatus)&&(identical(other.getSamplesException, getSamplesException) || other.getSamplesException == getSamplesException));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(samples),getSamplesStatus,getSamplesException);

@override
String toString() {
  return 'SampleState(samples: $samples, getSamplesStatus: $getSamplesStatus, getSamplesException: $getSamplesException)';
}


}

/// @nodoc
abstract mixin class $SampleStateCopyWith<$Res>  {
  factory $SampleStateCopyWith(SampleState value, $Res Function(SampleState) _then) = _$SampleStateCopyWithImpl;
@useResult
$Res call({
 List<SampleModel> samples, Status getSamplesStatus, CustomException getSamplesException
});


$CustomExceptionCopyWith<$Res> get getSamplesException;

}
/// @nodoc
class _$SampleStateCopyWithImpl<$Res>
    implements $SampleStateCopyWith<$Res> {
  _$SampleStateCopyWithImpl(this._self, this._then);

  final SampleState _self;
  final $Res Function(SampleState) _then;

/// Create a copy of SampleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? samples = null,Object? getSamplesStatus = null,Object? getSamplesException = null,}) {
  return _then(_self.copyWith(
samples: null == samples ? _self.samples : samples // ignore: cast_nullable_to_non_nullable
as List<SampleModel>,getSamplesStatus: null == getSamplesStatus ? _self.getSamplesStatus : getSamplesStatus // ignore: cast_nullable_to_non_nullable
as Status,getSamplesException: null == getSamplesException ? _self.getSamplesException : getSamplesException // ignore: cast_nullable_to_non_nullable
as CustomException,
  ));
}
/// Create a copy of SampleState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomExceptionCopyWith<$Res> get getSamplesException {
  
  return $CustomExceptionCopyWith<$Res>(_self.getSamplesException, (value) {
    return _then(_self.copyWith(getSamplesException: value));
  });
}
}


/// @nodoc


class _SampleState implements SampleState {
   _SampleState({final  List<SampleModel> samples = const [], this.getSamplesStatus = Status.loading, this.getSamplesException = const CustomException.unknownError()}): _samples = samples;
  

 final  List<SampleModel> _samples;
@override@JsonKey() List<SampleModel> get samples {
  if (_samples is EqualUnmodifiableListView) return _samples;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_samples);
}

@override@JsonKey() final  Status getSamplesStatus;
@override@JsonKey() final  CustomException getSamplesException;

/// Create a copy of SampleState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SampleStateCopyWith<_SampleState> get copyWith => __$SampleStateCopyWithImpl<_SampleState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SampleState&&const DeepCollectionEquality().equals(other._samples, _samples)&&(identical(other.getSamplesStatus, getSamplesStatus) || other.getSamplesStatus == getSamplesStatus)&&(identical(other.getSamplesException, getSamplesException) || other.getSamplesException == getSamplesException));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_samples),getSamplesStatus,getSamplesException);

@override
String toString() {
  return 'SampleState(samples: $samples, getSamplesStatus: $getSamplesStatus, getSamplesException: $getSamplesException)';
}


}

/// @nodoc
abstract mixin class _$SampleStateCopyWith<$Res> implements $SampleStateCopyWith<$Res> {
  factory _$SampleStateCopyWith(_SampleState value, $Res Function(_SampleState) _then) = __$SampleStateCopyWithImpl;
@override @useResult
$Res call({
 List<SampleModel> samples, Status getSamplesStatus, CustomException getSamplesException
});


@override $CustomExceptionCopyWith<$Res> get getSamplesException;

}
/// @nodoc
class __$SampleStateCopyWithImpl<$Res>
    implements _$SampleStateCopyWith<$Res> {
  __$SampleStateCopyWithImpl(this._self, this._then);

  final _SampleState _self;
  final $Res Function(_SampleState) _then;

/// Create a copy of SampleState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? samples = null,Object? getSamplesStatus = null,Object? getSamplesException = null,}) {
  return _then(_SampleState(
samples: null == samples ? _self._samples : samples // ignore: cast_nullable_to_non_nullable
as List<SampleModel>,getSamplesStatus: null == getSamplesStatus ? _self.getSamplesStatus : getSamplesStatus // ignore: cast_nullable_to_non_nullable
as Status,getSamplesException: null == getSamplesException ? _self.getSamplesException : getSamplesException // ignore: cast_nullable_to_non_nullable
as CustomException,
  ));
}

/// Create a copy of SampleState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomExceptionCopyWith<$Res> get getSamplesException {
  
  return $CustomExceptionCopyWith<$Res>(_self.getSamplesException, (value) {
    return _then(_self.copyWith(getSamplesException: value));
  });
}
}

// dart format on
