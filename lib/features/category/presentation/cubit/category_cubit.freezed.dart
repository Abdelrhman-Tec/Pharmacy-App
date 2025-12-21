// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryState<$T>()';
}


}

/// @nodoc
class $CategoryStateCopyWith<T,$Res>  {
$CategoryStateCopyWith(CategoryState<T> _, $Res Function(CategoryState<T>) __);
}


/// Adds pattern-matching-related methods to [CategoryState].
extension CategoryStatePatterns<T> on CategoryState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  categoriesInitial,TResult Function( Loading<T> value)?  categoriesLoading,TResult Function( Loaded<T> value)?  categoriesLoaded,TResult Function( Failure<T> value)?  categoriesFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when categoriesInitial != null:
return categoriesInitial(_that);case Loading() when categoriesLoading != null:
return categoriesLoading(_that);case Loaded() when categoriesLoaded != null:
return categoriesLoaded(_that);case Failure() when categoriesFailure != null:
return categoriesFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  categoriesInitial,required TResult Function( Loading<T> value)  categoriesLoading,required TResult Function( Loaded<T> value)  categoriesLoaded,required TResult Function( Failure<T> value)  categoriesFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return categoriesInitial(_that);case Loading():
return categoriesLoading(_that);case Loaded():
return categoriesLoaded(_that);case Failure():
return categoriesFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  categoriesInitial,TResult? Function( Loading<T> value)?  categoriesLoading,TResult? Function( Loaded<T> value)?  categoriesLoaded,TResult? Function( Failure<T> value)?  categoriesFailure,}){
final _that = this;
switch (_that) {
case _Initial() when categoriesInitial != null:
return categoriesInitial(_that);case Loading() when categoriesLoading != null:
return categoriesLoading(_that);case Loaded() when categoriesLoaded != null:
return categoriesLoaded(_that);case Failure() when categoriesFailure != null:
return categoriesFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  categoriesInitial,TResult Function()?  categoriesLoading,TResult Function( T data)?  categoriesLoaded,TResult Function( String message)?  categoriesFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when categoriesInitial != null:
return categoriesInitial();case Loading() when categoriesLoading != null:
return categoriesLoading();case Loaded() when categoriesLoaded != null:
return categoriesLoaded(_that.data);case Failure() when categoriesFailure != null:
return categoriesFailure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  categoriesInitial,required TResult Function()  categoriesLoading,required TResult Function( T data)  categoriesLoaded,required TResult Function( String message)  categoriesFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return categoriesInitial();case Loading():
return categoriesLoading();case Loaded():
return categoriesLoaded(_that.data);case Failure():
return categoriesFailure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  categoriesInitial,TResult? Function()?  categoriesLoading,TResult? Function( T data)?  categoriesLoaded,TResult? Function( String message)?  categoriesFailure,}) {final _that = this;
switch (_that) {
case _Initial() when categoriesInitial != null:
return categoriesInitial();case Loading() when categoriesLoading != null:
return categoriesLoading();case Loaded() when categoriesLoaded != null:
return categoriesLoaded(_that.data);case Failure() when categoriesFailure != null:
return categoriesFailure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements CategoryState<T> {
   _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryState<$T>.categoriesInitial()';
}


}




/// @nodoc


class Loading<T> implements CategoryState<T> {
   Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryState<$T>.categoriesLoading()';
}


}




/// @nodoc


class Loaded<T> implements CategoryState<T> {
   Loaded(this.data);
  

 final  T data;

/// Create a copy of CategoryState
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
  return 'CategoryState<$T>.categoriesLoaded(data: $data)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<T,$Res> implements $CategoryStateCopyWith<T, $Res> {
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

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(Loaded<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class Failure<T> implements CategoryState<T> {
   Failure({required this.message});
  

 final  String message;

/// Create a copy of CategoryState
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
  return 'CategoryState<$T>.categoriesFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<T,$Res> implements $CategoryStateCopyWith<T, $Res> {
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

/// Create a copy of CategoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Failure<T>(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
