// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthState {

 bool get isAuthenticated; Status get signInStatus; OAuthSignInModel get oauthSignInModel; CustomException get signInException;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.isAuthenticated, isAuthenticated) || other.isAuthenticated == isAuthenticated)&&(identical(other.signInStatus, signInStatus) || other.signInStatus == signInStatus)&&(identical(other.oauthSignInModel, oauthSignInModel) || other.oauthSignInModel == oauthSignInModel)&&(identical(other.signInException, signInException) || other.signInException == signInException));
}


@override
int get hashCode => Object.hash(runtimeType,isAuthenticated,signInStatus,oauthSignInModel,signInException);

@override
String toString() {
  return 'AuthState(isAuthenticated: $isAuthenticated, signInStatus: $signInStatus, oauthSignInModel: $oauthSignInModel, signInException: $signInException)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 bool isAuthenticated, Status signInStatus, OAuthSignInModel oauthSignInModel, CustomException signInException
});


$CustomExceptionCopyWith<$Res> get signInException;

}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isAuthenticated = null,Object? signInStatus = null,Object? oauthSignInModel = null,Object? signInException = null,}) {
  return _then(_self.copyWith(
isAuthenticated: null == isAuthenticated ? _self.isAuthenticated : isAuthenticated // ignore: cast_nullable_to_non_nullable
as bool,signInStatus: null == signInStatus ? _self.signInStatus : signInStatus // ignore: cast_nullable_to_non_nullable
as Status,oauthSignInModel: null == oauthSignInModel ? _self.oauthSignInModel : oauthSignInModel // ignore: cast_nullable_to_non_nullable
as OAuthSignInModel,signInException: null == signInException ? _self.signInException : signInException // ignore: cast_nullable_to_non_nullable
as CustomException,
  ));
}
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomExceptionCopyWith<$Res> get signInException {
  
  return $CustomExceptionCopyWith<$Res>(_self.signInException, (value) {
    return _then(_self.copyWith(signInException: value));
  });
}
}


/// @nodoc


class _AuthState implements AuthState {
   _AuthState({this.isAuthenticated = false, this.signInStatus = Status.none, this.oauthSignInModel = const OAuthSignInModel(accessToken: '', refreshToken: '', member: OAuthSignInMemberModel(id: -1, nickname: '')), this.signInException = const CustomException.unknownError()});
  

@override@JsonKey() final  bool isAuthenticated;
@override@JsonKey() final  Status signInStatus;
@override@JsonKey() final  OAuthSignInModel oauthSignInModel;
@override@JsonKey() final  CustomException signInException;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<_AuthState> get copyWith => __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState&&(identical(other.isAuthenticated, isAuthenticated) || other.isAuthenticated == isAuthenticated)&&(identical(other.signInStatus, signInStatus) || other.signInStatus == signInStatus)&&(identical(other.oauthSignInModel, oauthSignInModel) || other.oauthSignInModel == oauthSignInModel)&&(identical(other.signInException, signInException) || other.signInException == signInException));
}


@override
int get hashCode => Object.hash(runtimeType,isAuthenticated,signInStatus,oauthSignInModel,signInException);

@override
String toString() {
  return 'AuthState(isAuthenticated: $isAuthenticated, signInStatus: $signInStatus, oauthSignInModel: $oauthSignInModel, signInException: $signInException)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 bool isAuthenticated, Status signInStatus, OAuthSignInModel oauthSignInModel, CustomException signInException
});


@override $CustomExceptionCopyWith<$Res> get signInException;

}
/// @nodoc
class __$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isAuthenticated = null,Object? signInStatus = null,Object? oauthSignInModel = null,Object? signInException = null,}) {
  return _then(_AuthState(
isAuthenticated: null == isAuthenticated ? _self.isAuthenticated : isAuthenticated // ignore: cast_nullable_to_non_nullable
as bool,signInStatus: null == signInStatus ? _self.signInStatus : signInStatus // ignore: cast_nullable_to_non_nullable
as Status,oauthSignInModel: null == oauthSignInModel ? _self.oauthSignInModel : oauthSignInModel // ignore: cast_nullable_to_non_nullable
as OAuthSignInModel,signInException: null == signInException ? _self.signInException : signInException // ignore: cast_nullable_to_non_nullable
as CustomException,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomExceptionCopyWith<$Res> get signInException {
  
  return $CustomExceptionCopyWith<$Res>(_self.signInException, (value) {
    return _then(_self.copyWith(signInException: value));
  });
}
}

// dart format on
