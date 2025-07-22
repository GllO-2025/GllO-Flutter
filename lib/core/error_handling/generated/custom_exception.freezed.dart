// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../custom_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CustomException {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomException);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CustomException()';
}


}

/// @nodoc
class $CustomExceptionCopyWith<$Res>  {
$CustomExceptionCopyWith(CustomException _, $Res Function(CustomException) __);
}


/// @nodoc


class NotFound implements CustomException {
  const NotFound({required this.model});
  

 final  ErrorModel model;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotFoundCopyWith<NotFound> get copyWith => _$NotFoundCopyWithImpl<NotFound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotFound&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'CustomException.notFound(model: $model)';
}


}

/// @nodoc
abstract mixin class $NotFoundCopyWith<$Res> implements $CustomExceptionCopyWith<$Res> {
  factory $NotFoundCopyWith(NotFound value, $Res Function(NotFound) _then) = _$NotFoundCopyWithImpl;
@useResult
$Res call({
 ErrorModel model
});




}
/// @nodoc
class _$NotFoundCopyWithImpl<$Res>
    implements $NotFoundCopyWith<$Res> {
  _$NotFoundCopyWithImpl(this._self, this._then);

  final NotFound _self;
  final $Res Function(NotFound) _then;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(NotFound(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}


}

/// @nodoc


class MaxTryExceeded implements CustomException {
  const MaxTryExceeded({required this.model});
  

 final  ErrorModel model;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaxTryExceededCopyWith<MaxTryExceeded> get copyWith => _$MaxTryExceededCopyWithImpl<MaxTryExceeded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaxTryExceeded&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'CustomException.maxTryExceeded(model: $model)';
}


}

/// @nodoc
abstract mixin class $MaxTryExceededCopyWith<$Res> implements $CustomExceptionCopyWith<$Res> {
  factory $MaxTryExceededCopyWith(MaxTryExceeded value, $Res Function(MaxTryExceeded) _then) = _$MaxTryExceededCopyWithImpl;
@useResult
$Res call({
 ErrorModel model
});




}
/// @nodoc
class _$MaxTryExceededCopyWithImpl<$Res>
    implements $MaxTryExceededCopyWith<$Res> {
  _$MaxTryExceededCopyWithImpl(this._self, this._then);

  final MaxTryExceeded _self;
  final $Res Function(MaxTryExceeded) _then;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(MaxTryExceeded(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}


}

/// @nodoc


class NicknameReadFail implements CustomException {
  const NicknameReadFail({required this.model});
  

 final  ErrorModel model;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NicknameReadFailCopyWith<NicknameReadFail> get copyWith => _$NicknameReadFailCopyWithImpl<NicknameReadFail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NicknameReadFail&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'CustomException.nicknameReadFail(model: $model)';
}


}

/// @nodoc
abstract mixin class $NicknameReadFailCopyWith<$Res> implements $CustomExceptionCopyWith<$Res> {
  factory $NicknameReadFailCopyWith(NicknameReadFail value, $Res Function(NicknameReadFail) _then) = _$NicknameReadFailCopyWithImpl;
@useResult
$Res call({
 ErrorModel model
});




}
/// @nodoc
class _$NicknameReadFailCopyWithImpl<$Res>
    implements $NicknameReadFailCopyWith<$Res> {
  _$NicknameReadFailCopyWithImpl(this._self, this._then);

  final NicknameReadFail _self;
  final $Res Function(NicknameReadFail) _then;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(NicknameReadFail(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}


}

/// @nodoc


class NicknameAlreadyExist implements CustomException {
  const NicknameAlreadyExist({required this.model});
  

 final  ErrorModel model;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NicknameAlreadyExistCopyWith<NicknameAlreadyExist> get copyWith => _$NicknameAlreadyExistCopyWithImpl<NicknameAlreadyExist>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NicknameAlreadyExist&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'CustomException.nicknameAlreadyExist(model: $model)';
}


}

/// @nodoc
abstract mixin class $NicknameAlreadyExistCopyWith<$Res> implements $CustomExceptionCopyWith<$Res> {
  factory $NicknameAlreadyExistCopyWith(NicknameAlreadyExist value, $Res Function(NicknameAlreadyExist) _then) = _$NicknameAlreadyExistCopyWithImpl;
@useResult
$Res call({
 ErrorModel model
});




}
/// @nodoc
class _$NicknameAlreadyExistCopyWithImpl<$Res>
    implements $NicknameAlreadyExistCopyWith<$Res> {
  _$NicknameAlreadyExistCopyWithImpl(this._self, this._then);

  final NicknameAlreadyExist _self;
  final $Res Function(NicknameAlreadyExist) _then;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(NicknameAlreadyExist(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}


}

/// @nodoc


class InvalidToken implements CustomException {
  const InvalidToken({required this.model});
  

 final  ErrorModel model;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidTokenCopyWith<InvalidToken> get copyWith => _$InvalidTokenCopyWithImpl<InvalidToken>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidToken&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'CustomException.invalidToken(model: $model)';
}


}

/// @nodoc
abstract mixin class $InvalidTokenCopyWith<$Res> implements $CustomExceptionCopyWith<$Res> {
  factory $InvalidTokenCopyWith(InvalidToken value, $Res Function(InvalidToken) _then) = _$InvalidTokenCopyWithImpl;
@useResult
$Res call({
 ErrorModel model
});




}
/// @nodoc
class _$InvalidTokenCopyWithImpl<$Res>
    implements $InvalidTokenCopyWith<$Res> {
  _$InvalidTokenCopyWithImpl(this._self, this._then);

  final InvalidToken _self;
  final $Res Function(InvalidToken) _then;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(InvalidToken(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}


}

/// @nodoc


class ExpiredAccessToken implements CustomException {
  const ExpiredAccessToken({required this.model});
  

 final  ErrorModel model;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpiredAccessTokenCopyWith<ExpiredAccessToken> get copyWith => _$ExpiredAccessTokenCopyWithImpl<ExpiredAccessToken>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpiredAccessToken&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'CustomException.expiredAccessToken(model: $model)';
}


}

/// @nodoc
abstract mixin class $ExpiredAccessTokenCopyWith<$Res> implements $CustomExceptionCopyWith<$Res> {
  factory $ExpiredAccessTokenCopyWith(ExpiredAccessToken value, $Res Function(ExpiredAccessToken) _then) = _$ExpiredAccessTokenCopyWithImpl;
@useResult
$Res call({
 ErrorModel model
});




}
/// @nodoc
class _$ExpiredAccessTokenCopyWithImpl<$Res>
    implements $ExpiredAccessTokenCopyWith<$Res> {
  _$ExpiredAccessTokenCopyWithImpl(this._self, this._then);

  final ExpiredAccessToken _self;
  final $Res Function(ExpiredAccessToken) _then;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(ExpiredAccessToken(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}


}

/// @nodoc


class ExpiredRefreshToken implements CustomException {
  const ExpiredRefreshToken({required this.model});
  

 final  ErrorModel model;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpiredRefreshTokenCopyWith<ExpiredRefreshToken> get copyWith => _$ExpiredRefreshTokenCopyWithImpl<ExpiredRefreshToken>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpiredRefreshToken&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'CustomException.expiredRefreshToken(model: $model)';
}


}

/// @nodoc
abstract mixin class $ExpiredRefreshTokenCopyWith<$Res> implements $CustomExceptionCopyWith<$Res> {
  factory $ExpiredRefreshTokenCopyWith(ExpiredRefreshToken value, $Res Function(ExpiredRefreshToken) _then) = _$ExpiredRefreshTokenCopyWithImpl;
@useResult
$Res call({
 ErrorModel model
});




}
/// @nodoc
class _$ExpiredRefreshTokenCopyWithImpl<$Res>
    implements $ExpiredRefreshTokenCopyWith<$Res> {
  _$ExpiredRefreshTokenCopyWithImpl(this._self, this._then);

  final ExpiredRefreshToken _self;
  final $Res Function(ExpiredRefreshToken) _then;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(ExpiredRefreshToken(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}


}

/// @nodoc


class InvalidPassword implements CustomException {
  const InvalidPassword({required this.model});
  

 final  ErrorModel model;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidPasswordCopyWith<InvalidPassword> get copyWith => _$InvalidPasswordCopyWithImpl<InvalidPassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidPassword&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'CustomException.invalidPassword(model: $model)';
}


}

/// @nodoc
abstract mixin class $InvalidPasswordCopyWith<$Res> implements $CustomExceptionCopyWith<$Res> {
  factory $InvalidPasswordCopyWith(InvalidPassword value, $Res Function(InvalidPassword) _then) = _$InvalidPasswordCopyWithImpl;
@useResult
$Res call({
 ErrorModel model
});




}
/// @nodoc
class _$InvalidPasswordCopyWithImpl<$Res>
    implements $InvalidPasswordCopyWith<$Res> {
  _$InvalidPasswordCopyWithImpl(this._self, this._then);

  final InvalidPassword _self;
  final $Res Function(InvalidPassword) _then;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(InvalidPassword(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}


}

/// @nodoc


class DuplicatedMember implements CustomException {
  const DuplicatedMember({required this.model});
  

 final  ErrorModel model;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DuplicatedMemberCopyWith<DuplicatedMember> get copyWith => _$DuplicatedMemberCopyWithImpl<DuplicatedMember>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DuplicatedMember&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'CustomException.duplicatedMember(model: $model)';
}


}

/// @nodoc
abstract mixin class $DuplicatedMemberCopyWith<$Res> implements $CustomExceptionCopyWith<$Res> {
  factory $DuplicatedMemberCopyWith(DuplicatedMember value, $Res Function(DuplicatedMember) _then) = _$DuplicatedMemberCopyWithImpl;
@useResult
$Res call({
 ErrorModel model
});




}
/// @nodoc
class _$DuplicatedMemberCopyWithImpl<$Res>
    implements $DuplicatedMemberCopyWith<$Res> {
  _$DuplicatedMemberCopyWithImpl(this._self, this._then);

  final DuplicatedMember _self;
  final $Res Function(DuplicatedMember) _then;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(DuplicatedMember(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}


}

/// @nodoc


class GoogleLoginIntervalServerError implements CustomException {
  const GoogleLoginIntervalServerError({required this.model});
  

 final  ErrorModel model;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoogleLoginIntervalServerErrorCopyWith<GoogleLoginIntervalServerError> get copyWith => _$GoogleLoginIntervalServerErrorCopyWithImpl<GoogleLoginIntervalServerError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleLoginIntervalServerError&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'CustomException.googleLoginError(model: $model)';
}


}

/// @nodoc
abstract mixin class $GoogleLoginIntervalServerErrorCopyWith<$Res> implements $CustomExceptionCopyWith<$Res> {
  factory $GoogleLoginIntervalServerErrorCopyWith(GoogleLoginIntervalServerError value, $Res Function(GoogleLoginIntervalServerError) _then) = _$GoogleLoginIntervalServerErrorCopyWithImpl;
@useResult
$Res call({
 ErrorModel model
});




}
/// @nodoc
class _$GoogleLoginIntervalServerErrorCopyWithImpl<$Res>
    implements $GoogleLoginIntervalServerErrorCopyWith<$Res> {
  _$GoogleLoginIntervalServerErrorCopyWithImpl(this._self, this._then);

  final GoogleLoginIntervalServerError _self;
  final $Res Function(GoogleLoginIntervalServerError) _then;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(GoogleLoginIntervalServerError(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}


}

/// @nodoc


class RefreshReuseException implements CustomException {
  const RefreshReuseException({required this.model});
  

 final  ErrorModel model;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefreshReuseExceptionCopyWith<RefreshReuseException> get copyWith => _$RefreshReuseExceptionCopyWithImpl<RefreshReuseException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshReuseException&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'CustomException.refreshReuse(model: $model)';
}


}

/// @nodoc
abstract mixin class $RefreshReuseExceptionCopyWith<$Res> implements $CustomExceptionCopyWith<$Res> {
  factory $RefreshReuseExceptionCopyWith(RefreshReuseException value, $Res Function(RefreshReuseException) _then) = _$RefreshReuseExceptionCopyWithImpl;
@useResult
$Res call({
 ErrorModel model
});




}
/// @nodoc
class _$RefreshReuseExceptionCopyWithImpl<$Res>
    implements $RefreshReuseExceptionCopyWith<$Res> {
  _$RefreshReuseExceptionCopyWithImpl(this._self, this._then);

  final RefreshReuseException _self;
  final $Res Function(RefreshReuseException) _then;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(RefreshReuseException(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}


}

/// @nodoc


class ServerError implements CustomException {
  const ServerError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CustomException.serverError()';
}


}




/// @nodoc


class NetworkError implements CustomException {
  const NetworkError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CustomException.networkError()';
}


}




/// @nodoc


class UnknownError implements CustomException {
  const UnknownError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CustomException.unknownError()';
}


}




// dart format on
