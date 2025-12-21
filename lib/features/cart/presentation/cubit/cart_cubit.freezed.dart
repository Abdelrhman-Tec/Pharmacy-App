// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartState<$T>()';
}


}

/// @nodoc
class $CartStateCopyWith<T,$Res>  {
$CartStateCopyWith(CartState<T> _, $Res Function(CartState<T>) __);
}


/// Adds pattern-matching-related methods to [CartState].
extension CartStatePatterns<T> on CartState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  cartInitial,TResult Function( Loading<T> value)?  cartLoading,TResult Function( Loaded<T> value)?  cartLoaded,TResult Function( Failure<T> value)?  cartFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when cartInitial != null:
return cartInitial(_that);case Loading() when cartLoading != null:
return cartLoading(_that);case Loaded() when cartLoaded != null:
return cartLoaded(_that);case Failure() when cartFailure != null:
return cartFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  cartInitial,required TResult Function( Loading<T> value)  cartLoading,required TResult Function( Loaded<T> value)  cartLoaded,required TResult Function( Failure<T> value)  cartFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return cartInitial(_that);case Loading():
return cartLoading(_that);case Loaded():
return cartLoaded(_that);case Failure():
return cartFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  cartInitial,TResult? Function( Loading<T> value)?  cartLoading,TResult? Function( Loaded<T> value)?  cartLoaded,TResult? Function( Failure<T> value)?  cartFailure,}){
final _that = this;
switch (_that) {
case _Initial() when cartInitial != null:
return cartInitial(_that);case Loading() when cartLoading != null:
return cartLoading(_that);case Loaded() when cartLoaded != null:
return cartLoaded(_that);case Failure() when cartFailure != null:
return cartFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  cartInitial,TResult Function()?  cartLoading,TResult Function( T data)?  cartLoaded,TResult Function( String message)?  cartFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when cartInitial != null:
return cartInitial();case Loading() when cartLoading != null:
return cartLoading();case Loaded() when cartLoaded != null:
return cartLoaded(_that.data);case Failure() when cartFailure != null:
return cartFailure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  cartInitial,required TResult Function()  cartLoading,required TResult Function( T data)  cartLoaded,required TResult Function( String message)  cartFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return cartInitial();case Loading():
return cartLoading();case Loaded():
return cartLoaded(_that.data);case Failure():
return cartFailure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  cartInitial,TResult? Function()?  cartLoading,TResult? Function( T data)?  cartLoaded,TResult? Function( String message)?  cartFailure,}) {final _that = this;
switch (_that) {
case _Initial() when cartInitial != null:
return cartInitial();case Loading() when cartLoading != null:
return cartLoading();case Loaded() when cartLoaded != null:
return cartLoaded(_that.data);case Failure() when cartFailure != null:
return cartFailure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements CartState<T> {
   _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartState<$T>.cartInitial()';
}


}




/// @nodoc


class Loading<T> implements CartState<T> {
   Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartState<$T>.cartLoading()';
}


}




/// @nodoc


class Loaded<T> implements CartState<T> {
   Loaded(this.data);
  

 final  T data;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCopyWith<T, Loaded<T>> get copyWith => _$LoadedCopyWithImpl<T, Loaded<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'CartState<$T>.cartLoaded(data: $data)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<T,$Res> implements $CartStateCopyWith<T, $Res> {
  factory $LoadedCopyWith(Loaded<T> value, $Res Function(Loaded<T>) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$LoadedCopyWithImpl<T,$Res>
    implements $LoadedCopyWith<T, $Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded<T> _self;
  final $Res Function(Loaded<T>) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(Loaded<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class Failure<T> implements CartState<T> {
   Failure({required this.message});
  

 final  String message;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<T, Failure<T>> get copyWith => _$FailureCopyWithImpl<T, Failure<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure<T>&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CartState<$T>.cartFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<T,$Res> implements $CartStateCopyWith<T, $Res> {
  factory $FailureCopyWith(Failure<T> value, $Res Function(Failure<T>) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FailureCopyWithImpl<T,$Res>
    implements $FailureCopyWith<T, $Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure<T> _self;
  final $Res Function(Failure<T>) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Failure<T>(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
