// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coins_asset_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CoinsAssetEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoinsAssetEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoinsAssetEvent()';
}


}

/// @nodoc
class $CoinsAssetEventCopyWith<$Res>  {
$CoinsAssetEventCopyWith(CoinsAssetEvent _, $Res Function(CoinsAssetEvent) __);
}


/// Adds pattern-matching-related methods to [CoinsAssetEvent].
extension CoinsAssetEventPatterns on CoinsAssetEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Init value)?  init,TResult Function( _LoadMore value)?  loadMore,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Init value)  init,required TResult Function( _LoadMore value)  loadMore,}){
final _that = this;
switch (_that) {
case _Init():
return init(_that);case _LoadMore():
return loadMore(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Init value)?  init,TResult? Function( _LoadMore value)?  loadMore,}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _LoadMore() when loadMore != null:
return loadMore(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function()?  loadMore,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init();case _LoadMore() when loadMore != null:
return loadMore();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function()  loadMore,}) {final _that = this;
switch (_that) {
case _Init():
return init();case _LoadMore():
return loadMore();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function()?  loadMore,}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init();case _LoadMore() when loadMore != null:
return loadMore();case _:
  return null;

}
}

}

/// @nodoc


class _Init implements CoinsAssetEvent {
  const _Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoinsAssetEvent.init()';
}


}




/// @nodoc


class _LoadMore implements CoinsAssetEvent {
  const _LoadMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CoinsAssetEvent.loadMore()';
}


}




/// @nodoc
mixin _$CoinsAssetState {

 Set<CoinAsset> get assets;
/// Create a copy of CoinsAssetState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoinsAssetStateCopyWith<CoinsAssetState> get copyWith => _$CoinsAssetStateCopyWithImpl<CoinsAssetState>(this as CoinsAssetState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoinsAssetState&&const DeepCollectionEquality().equals(other.assets, assets));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(assets));

@override
String toString() {
  return 'CoinsAssetState(assets: $assets)';
}


}

/// @nodoc
abstract mixin class $CoinsAssetStateCopyWith<$Res>  {
  factory $CoinsAssetStateCopyWith(CoinsAssetState value, $Res Function(CoinsAssetState) _then) = _$CoinsAssetStateCopyWithImpl;
@useResult
$Res call({
 Set<CoinAsset> assets
});




}
/// @nodoc
class _$CoinsAssetStateCopyWithImpl<$Res>
    implements $CoinsAssetStateCopyWith<$Res> {
  _$CoinsAssetStateCopyWithImpl(this._self, this._then);

  final CoinsAssetState _self;
  final $Res Function(CoinsAssetState) _then;

/// Create a copy of CoinsAssetState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assets = null,}) {
  return _then(_self.copyWith(
assets: null == assets ? _self.assets : assets // ignore: cast_nullable_to_non_nullable
as Set<CoinAsset>,
  ));
}

}


/// Adds pattern-matching-related methods to [CoinsAssetState].
extension CoinsAssetStatePatterns on CoinsAssetState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Error():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Set<CoinAsset> assets)?  initial,TResult Function( Set<CoinAsset> assets)?  loading,TResult Function( Set<CoinAsset> assets)?  loaded,TResult Function( Set<CoinAsset> assets,  String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.assets);case _Loading() when loading != null:
return loading(_that.assets);case _Loaded() when loaded != null:
return loaded(_that.assets);case _Error() when error != null:
return error(_that.assets,_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Set<CoinAsset> assets)  initial,required TResult Function( Set<CoinAsset> assets)  loading,required TResult Function( Set<CoinAsset> assets)  loaded,required TResult Function( Set<CoinAsset> assets,  String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial(_that.assets);case _Loading():
return loading(_that.assets);case _Loaded():
return loaded(_that.assets);case _Error():
return error(_that.assets,_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Set<CoinAsset> assets)?  initial,TResult? Function( Set<CoinAsset> assets)?  loading,TResult? Function( Set<CoinAsset> assets)?  loaded,TResult? Function( Set<CoinAsset> assets,  String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that.assets);case _Loading() when loading != null:
return loading(_that.assets);case _Loaded() when loaded != null:
return loaded(_that.assets);case _Error() when error != null:
return error(_that.assets,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements CoinsAssetState {
  const _Initial({final  Set<CoinAsset> assets = const {}}): _assets = assets;
  

 final  Set<CoinAsset> _assets;
@override@JsonKey() Set<CoinAsset> get assets {
  if (_assets is EqualUnmodifiableSetView) return _assets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_assets);
}


/// Create a copy of CoinsAssetState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&const DeepCollectionEquality().equals(other._assets, _assets));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_assets));

@override
String toString() {
  return 'CoinsAssetState.initial(assets: $assets)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $CoinsAssetStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 Set<CoinAsset> assets
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of CoinsAssetState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assets = null,}) {
  return _then(_Initial(
assets: null == assets ? _self._assets : assets // ignore: cast_nullable_to_non_nullable
as Set<CoinAsset>,
  ));
}


}

/// @nodoc


class _Loading implements CoinsAssetState {
  const _Loading({final  Set<CoinAsset> assets = const {}}): _assets = assets;
  

 final  Set<CoinAsset> _assets;
@override@JsonKey() Set<CoinAsset> get assets {
  if (_assets is EqualUnmodifiableSetView) return _assets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_assets);
}


/// Create a copy of CoinsAssetState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingCopyWith<_Loading> get copyWith => __$LoadingCopyWithImpl<_Loading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading&&const DeepCollectionEquality().equals(other._assets, _assets));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_assets));

@override
String toString() {
  return 'CoinsAssetState.loading(assets: $assets)';
}


}

/// @nodoc
abstract mixin class _$LoadingCopyWith<$Res> implements $CoinsAssetStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) _then) = __$LoadingCopyWithImpl;
@override @useResult
$Res call({
 Set<CoinAsset> assets
});




}
/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(this._self, this._then);

  final _Loading _self;
  final $Res Function(_Loading) _then;

/// Create a copy of CoinsAssetState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assets = null,}) {
  return _then(_Loading(
assets: null == assets ? _self._assets : assets // ignore: cast_nullable_to_non_nullable
as Set<CoinAsset>,
  ));
}


}

/// @nodoc


class _Loaded implements CoinsAssetState {
  const _Loaded({required final  Set<CoinAsset> assets}): _assets = assets;
  

 final  Set<CoinAsset> _assets;
@override Set<CoinAsset> get assets {
  if (_assets is EqualUnmodifiableSetView) return _assets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_assets);
}


/// Create a copy of CoinsAssetState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._assets, _assets));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_assets));

@override
String toString() {
  return 'CoinsAssetState.loaded(assets: $assets)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $CoinsAssetStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@override @useResult
$Res call({
 Set<CoinAsset> assets
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of CoinsAssetState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assets = null,}) {
  return _then(_Loaded(
assets: null == assets ? _self._assets : assets // ignore: cast_nullable_to_non_nullable
as Set<CoinAsset>,
  ));
}


}

/// @nodoc


class _Error implements CoinsAssetState {
  const _Error({final  Set<CoinAsset> assets = const {}, required this.message}): _assets = assets;
  

 final  Set<CoinAsset> _assets;
@override@JsonKey() Set<CoinAsset> get assets {
  if (_assets is EqualUnmodifiableSetView) return _assets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_assets);
}

 final  String message;

/// Create a copy of CoinsAssetState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&const DeepCollectionEquality().equals(other._assets, _assets)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_assets),message);

@override
String toString() {
  return 'CoinsAssetState.error(assets: $assets, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $CoinsAssetStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@override @useResult
$Res call({
 Set<CoinAsset> assets, String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of CoinsAssetState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assets = null,Object? message = null,}) {
  return _then(_Error(
assets: null == assets ? _self._assets : assets // ignore: cast_nullable_to_non_nullable
as Set<CoinAsset>,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
