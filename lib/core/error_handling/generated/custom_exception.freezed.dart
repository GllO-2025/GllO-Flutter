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


class Unauthorized implements CustomException {
  const Unauthorized({required this.model});
  

 final  ErrorModel model;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnauthorizedCopyWith<Unauthorized> get copyWith => _$UnauthorizedCopyWithImpl<Unauthorized>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unauthorized&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'CustomException.unauthorized(model: $model)';
}


}

/// @nodoc
abstract mixin class $UnauthorizedCopyWith<$Res> implements $CustomExceptionCopyWith<$Res> {
  factory $UnauthorizedCopyWith(Unauthorized value, $Res Function(Unauthorized) _then) = _$UnauthorizedCopyWithImpl;
@useResult
$Res call({
 ErrorModel model
});




}
/// @nodoc
class _$UnauthorizedCopyWithImpl<$Res>
    implements $UnauthorizedCopyWith<$Res> {
  _$UnauthorizedCopyWithImpl(this._self, this._then);

  final Unauthorized _self;
  final $Res Function(Unauthorized) _then;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(Unauthorized(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}


}

/// @nodoc


class UserNotFound implements CustomException {
  const UserNotFound({required this.model});
  

 final  ErrorModel model;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserNotFoundCopyWith<UserNotFound> get copyWith => _$UserNotFoundCopyWithImpl<UserNotFound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserNotFound&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'CustomException.userNotFound(model: $model)';
}


}

/// @nodoc
abstract mixin class $UserNotFoundCopyWith<$Res> implements $CustomExceptionCopyWith<$Res> {
  factory $UserNotFoundCopyWith(UserNotFound value, $Res Function(UserNotFound) _then) = _$UserNotFoundCopyWithImpl;
@useResult
$Res call({
 ErrorModel model
});




}
/// @nodoc
class _$UserNotFoundCopyWithImpl<$Res>
    implements $UserNotFoundCopyWith<$Res> {
  _$UserNotFoundCopyWithImpl(this._self, this._then);

  final UserNotFound _self;
  final $Res Function(UserNotFound) _then;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(UserNotFound(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}


}

/// @nodoc


class TokenExpired implements CustomException {
  const TokenExpired({required this.model});
  

 final  ErrorModel model;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokenExpiredCopyWith<TokenExpired> get copyWith => _$TokenExpiredCopyWithImpl<TokenExpired>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenExpired&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'CustomException.tokenExpired(model: $model)';
}


}

/// @nodoc
abstract mixin class $TokenExpiredCopyWith<$Res> implements $CustomExceptionCopyWith<$Res> {
  factory $TokenExpiredCopyWith(TokenExpired value, $Res Function(TokenExpired) _then) = _$TokenExpiredCopyWithImpl;
@useResult
$Res call({
 ErrorModel model
});




}
/// @nodoc
class _$TokenExpiredCopyWithImpl<$Res>
    implements $TokenExpiredCopyWith<$Res> {
  _$TokenExpiredCopyWithImpl(this._self, this._then);

  final TokenExpired _self;
  final $Res Function(TokenExpired) _then;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(TokenExpired(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}


}

/// @nodoc


class ProductNotFound implements CustomException {
  const ProductNotFound({required this.model});
  

 final  ErrorModel model;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductNotFoundCopyWith<ProductNotFound> get copyWith => _$ProductNotFoundCopyWithImpl<ProductNotFound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductNotFound&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'CustomException.productNotFound(model: $model)';
}


}

/// @nodoc
abstract mixin class $ProductNotFoundCopyWith<$Res> implements $CustomExceptionCopyWith<$Res> {
  factory $ProductNotFoundCopyWith(ProductNotFound value, $Res Function(ProductNotFound) _then) = _$ProductNotFoundCopyWithImpl;
@useResult
$Res call({
 ErrorModel model
});




}
/// @nodoc
class _$ProductNotFoundCopyWithImpl<$Res>
    implements $ProductNotFoundCopyWith<$Res> {
  _$ProductNotFoundCopyWithImpl(this._self, this._then);

  final ProductNotFound _self;
  final $Res Function(ProductNotFound) _then;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(ProductNotFound(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}


}

/// @nodoc


class MissingRequiredValue implements CustomException {
  const MissingRequiredValue({required this.model});
  

 final  ErrorModel model;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MissingRequiredValueCopyWith<MissingRequiredValue> get copyWith => _$MissingRequiredValueCopyWithImpl<MissingRequiredValue>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MissingRequiredValue&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'CustomException.missingRequiredValue(model: $model)';
}


}

/// @nodoc
abstract mixin class $MissingRequiredValueCopyWith<$Res> implements $CustomExceptionCopyWith<$Res> {
  factory $MissingRequiredValueCopyWith(MissingRequiredValue value, $Res Function(MissingRequiredValue) _then) = _$MissingRequiredValueCopyWithImpl;
@useResult
$Res call({
 ErrorModel model
});




}
/// @nodoc
class _$MissingRequiredValueCopyWithImpl<$Res>
    implements $MissingRequiredValueCopyWith<$Res> {
  _$MissingRequiredValueCopyWithImpl(this._self, this._then);

  final MissingRequiredValue _self;
  final $Res Function(MissingRequiredValue) _then;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(MissingRequiredValue(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as ErrorModel,
  ));
}


}

/// @nodoc


class Invalid implements CustomException {
  const Invalid({required this.model});
  

 final  ErrorModel model;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidCopyWith<Invalid> get copyWith => _$InvalidCopyWithImpl<Invalid>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Invalid&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'CustomException.invalid(model: $model)';
}


}

/// @nodoc
abstract mixin class $InvalidCopyWith<$Res> implements $CustomExceptionCopyWith<$Res> {
  factory $InvalidCopyWith(Invalid value, $Res Function(Invalid) _then) = _$InvalidCopyWithImpl;
@useResult
$Res call({
 ErrorModel model
});




}
/// @nodoc
class _$InvalidCopyWithImpl<$Res>
    implements $InvalidCopyWith<$Res> {
  _$InvalidCopyWithImpl(this._self, this._then);

  final Invalid _self;
  final $Res Function(Invalid) _then;

/// Create a copy of CustomException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(Invalid(
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
