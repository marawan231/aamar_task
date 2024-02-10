// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Post> posts) loaded,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(List<Post> posts) searched,
    required TResult Function() favouriteLoading,
    required TResult Function(List<Post> posts) favourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Post> posts)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(List<Post> posts)? searched,
    TResult? Function()? favouriteLoading,
    TResult? Function(List<Post> posts)? favourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> posts)? loaded,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(List<Post> posts)? searched,
    TResult Function()? favouriteLoading,
    TResult Function(List<Post> posts)? favourite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_FavouriteLoading value) favouriteLoading,
    required TResult Function(_Favourite value) favourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_FavouriteLoading value)? favouriteLoading,
    TResult? Function(_Favourite value)? favourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_FavouriteLoading value)? favouriteLoading,
    TResult Function(_Favourite value)? favourite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsStateCopyWith<$Res> {
  factory $PostsStateCopyWith(
          PostsState value, $Res Function(PostsState) then) =
      _$PostsStateCopyWithImpl<$Res, PostsState>;
}

/// @nodoc
class _$PostsStateCopyWithImpl<$Res, $Val extends PostsState>
    implements $PostsStateCopyWith<$Res> {
  _$PostsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PostsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Post> posts) loaded,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(List<Post> posts) searched,
    required TResult Function() favouriteLoading,
    required TResult Function(List<Post> posts) favourite,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Post> posts)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(List<Post> posts)? searched,
    TResult? Function()? favouriteLoading,
    TResult? Function(List<Post> posts)? favourite,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> posts)? loaded,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(List<Post> posts)? searched,
    TResult Function()? favouriteLoading,
    TResult Function(List<Post> posts)? favourite,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_FavouriteLoading value) favouriteLoading,
    required TResult Function(_Favourite value) favourite,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_FavouriteLoading value)? favouriteLoading,
    TResult? Function(_Favourite value)? favourite,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_FavouriteLoading value)? favouriteLoading,
    TResult Function(_Favourite value)? favourite,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PostsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'PostsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Post> posts) loaded,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(List<Post> posts) searched,
    required TResult Function() favouriteLoading,
    required TResult Function(List<Post> posts) favourite,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Post> posts)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(List<Post> posts)? searched,
    TResult? Function()? favouriteLoading,
    TResult? Function(List<Post> posts)? favourite,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> posts)? loaded,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(List<Post> posts)? searched,
    TResult Function()? favouriteLoading,
    TResult Function(List<Post> posts)? favourite,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_FavouriteLoading value) favouriteLoading,
    required TResult Function(_Favourite value) favourite,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_FavouriteLoading value)? favouriteLoading,
    TResult? Function(_Favourite value)? favourite,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_FavouriteLoading value)? favouriteLoading,
    TResult Function(_Favourite value)? favourite,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PostsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Post> posts});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
  }) {
    return _then(_$LoadedImpl(
      null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<Post> posts) : _posts = posts;

  final List<Post> _posts;
  @override
  List<Post> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'PostsState.loaded(posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Post> posts) loaded,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(List<Post> posts) searched,
    required TResult Function() favouriteLoading,
    required TResult Function(List<Post> posts) favourite,
  }) {
    return loaded(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Post> posts)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(List<Post> posts)? searched,
    TResult? Function()? favouriteLoading,
    TResult? Function(List<Post> posts)? favourite,
  }) {
    return loaded?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> posts)? loaded,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(List<Post> posts)? searched,
    TResult Function()? favouriteLoading,
    TResult Function(List<Post> posts)? favourite,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_FavouriteLoading value) favouriteLoading,
    required TResult Function(_Favourite value) favourite,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_FavouriteLoading value)? favouriteLoading,
    TResult? Function(_Favourite value)? favourite,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_FavouriteLoading value)? favouriteLoading,
    TResult Function(_Favourite value)? favourite,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements PostsState {
  const factory _Loaded(final List<Post> posts) = _$LoadedImpl;

  List<Post> get posts;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PostsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Post> posts) loaded,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(List<Post> posts) searched,
    required TResult Function() favouriteLoading,
    required TResult Function(List<Post> posts) favourite,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Post> posts)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(List<Post> posts)? searched,
    TResult? Function()? favouriteLoading,
    TResult? Function(List<Post> posts)? favourite,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> posts)? loaded,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(List<Post> posts)? searched,
    TResult Function()? favouriteLoading,
    TResult Function(List<Post> posts)? favourite,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_FavouriteLoading value) favouriteLoading,
    required TResult Function(_Favourite value) favourite,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_FavouriteLoading value)? favouriteLoading,
    TResult? Function(_Favourite value)? favourite,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_FavouriteLoading value)? favouriteLoading,
    TResult Function(_Favourite value)? favourite,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PostsState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchingImplCopyWith<$Res> {
  factory _$$SearchingImplCopyWith(
          _$SearchingImpl value, $Res Function(_$SearchingImpl) then) =
      __$$SearchingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchingImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$SearchingImpl>
    implements _$$SearchingImplCopyWith<$Res> {
  __$$SearchingImplCopyWithImpl(
      _$SearchingImpl _value, $Res Function(_$SearchingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchingImpl implements _Searching {
  const _$SearchingImpl();

  @override
  String toString() {
    return 'PostsState.searching()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Post> posts) loaded,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(List<Post> posts) searched,
    required TResult Function() favouriteLoading,
    required TResult Function(List<Post> posts) favourite,
  }) {
    return searching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Post> posts)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(List<Post> posts)? searched,
    TResult? Function()? favouriteLoading,
    TResult? Function(List<Post> posts)? favourite,
  }) {
    return searching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> posts)? loaded,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(List<Post> posts)? searched,
    TResult Function()? favouriteLoading,
    TResult Function(List<Post> posts)? favourite,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_FavouriteLoading value) favouriteLoading,
    required TResult Function(_Favourite value) favourite,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_FavouriteLoading value)? favouriteLoading,
    TResult? Function(_Favourite value)? favourite,
  }) {
    return searching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_FavouriteLoading value)? favouriteLoading,
    TResult Function(_Favourite value)? favourite,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class _Searching implements PostsState {
  const factory _Searching() = _$SearchingImpl;
}

/// @nodoc
abstract class _$$SearchedImplCopyWith<$Res> {
  factory _$$SearchedImplCopyWith(
          _$SearchedImpl value, $Res Function(_$SearchedImpl) then) =
      __$$SearchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Post> posts});
}

/// @nodoc
class __$$SearchedImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$SearchedImpl>
    implements _$$SearchedImplCopyWith<$Res> {
  __$$SearchedImplCopyWithImpl(
      _$SearchedImpl _value, $Res Function(_$SearchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
  }) {
    return _then(_$SearchedImpl(
      null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$SearchedImpl implements _Searched {
  const _$SearchedImpl(final List<Post> posts) : _posts = posts;

  final List<Post> _posts;
  @override
  List<Post> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'PostsState.searched(posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchedImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchedImplCopyWith<_$SearchedImpl> get copyWith =>
      __$$SearchedImplCopyWithImpl<_$SearchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Post> posts) loaded,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(List<Post> posts) searched,
    required TResult Function() favouriteLoading,
    required TResult Function(List<Post> posts) favourite,
  }) {
    return searched(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Post> posts)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(List<Post> posts)? searched,
    TResult? Function()? favouriteLoading,
    TResult? Function(List<Post> posts)? favourite,
  }) {
    return searched?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> posts)? loaded,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(List<Post> posts)? searched,
    TResult Function()? favouriteLoading,
    TResult Function(List<Post> posts)? favourite,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_FavouriteLoading value) favouriteLoading,
    required TResult Function(_Favourite value) favourite,
  }) {
    return searched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_FavouriteLoading value)? favouriteLoading,
    TResult? Function(_Favourite value)? favourite,
  }) {
    return searched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_FavouriteLoading value)? favouriteLoading,
    TResult Function(_Favourite value)? favourite,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(this);
    }
    return orElse();
  }
}

abstract class _Searched implements PostsState {
  const factory _Searched(final List<Post> posts) = _$SearchedImpl;

  List<Post> get posts;
  @JsonKey(ignore: true)
  _$$SearchedImplCopyWith<_$SearchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavouriteLoadingImplCopyWith<$Res> {
  factory _$$FavouriteLoadingImplCopyWith(_$FavouriteLoadingImpl value,
          $Res Function(_$FavouriteLoadingImpl) then) =
      __$$FavouriteLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavouriteLoadingImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$FavouriteLoadingImpl>
    implements _$$FavouriteLoadingImplCopyWith<$Res> {
  __$$FavouriteLoadingImplCopyWithImpl(_$FavouriteLoadingImpl _value,
      $Res Function(_$FavouriteLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavouriteLoadingImpl implements _FavouriteLoading {
  const _$FavouriteLoadingImpl();

  @override
  String toString() {
    return 'PostsState.favouriteLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavouriteLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Post> posts) loaded,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(List<Post> posts) searched,
    required TResult Function() favouriteLoading,
    required TResult Function(List<Post> posts) favourite,
  }) {
    return favouriteLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Post> posts)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(List<Post> posts)? searched,
    TResult? Function()? favouriteLoading,
    TResult? Function(List<Post> posts)? favourite,
  }) {
    return favouriteLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> posts)? loaded,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(List<Post> posts)? searched,
    TResult Function()? favouriteLoading,
    TResult Function(List<Post> posts)? favourite,
    required TResult orElse(),
  }) {
    if (favouriteLoading != null) {
      return favouriteLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_FavouriteLoading value) favouriteLoading,
    required TResult Function(_Favourite value) favourite,
  }) {
    return favouriteLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_FavouriteLoading value)? favouriteLoading,
    TResult? Function(_Favourite value)? favourite,
  }) {
    return favouriteLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_FavouriteLoading value)? favouriteLoading,
    TResult Function(_Favourite value)? favourite,
    required TResult orElse(),
  }) {
    if (favouriteLoading != null) {
      return favouriteLoading(this);
    }
    return orElse();
  }
}

abstract class _FavouriteLoading implements PostsState {
  const factory _FavouriteLoading() = _$FavouriteLoadingImpl;
}

/// @nodoc
abstract class _$$FavouriteImplCopyWith<$Res> {
  factory _$$FavouriteImplCopyWith(
          _$FavouriteImpl value, $Res Function(_$FavouriteImpl) then) =
      __$$FavouriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Post> posts});
}

/// @nodoc
class __$$FavouriteImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$FavouriteImpl>
    implements _$$FavouriteImplCopyWith<$Res> {
  __$$FavouriteImplCopyWithImpl(
      _$FavouriteImpl _value, $Res Function(_$FavouriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
  }) {
    return _then(_$FavouriteImpl(
      null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$FavouriteImpl implements _Favourite {
  const _$FavouriteImpl(final List<Post> posts) : _posts = posts;

  final List<Post> _posts;
  @override
  List<Post> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'PostsState.favourite(posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouriteImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouriteImplCopyWith<_$FavouriteImpl> get copyWith =>
      __$$FavouriteImplCopyWithImpl<_$FavouriteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Post> posts) loaded,
    required TResult Function(String message) error,
    required TResult Function() searching,
    required TResult Function(List<Post> posts) searched,
    required TResult Function() favouriteLoading,
    required TResult Function(List<Post> posts) favourite,
  }) {
    return favourite(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Post> posts)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? searching,
    TResult? Function(List<Post> posts)? searched,
    TResult? Function()? favouriteLoading,
    TResult? Function(List<Post> posts)? favourite,
  }) {
    return favourite?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> posts)? loaded,
    TResult Function(String message)? error,
    TResult Function()? searching,
    TResult Function(List<Post> posts)? searched,
    TResult Function()? favouriteLoading,
    TResult Function(List<Post> posts)? favourite,
    required TResult orElse(),
  }) {
    if (favourite != null) {
      return favourite(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Searched value) searched,
    required TResult Function(_FavouriteLoading value) favouriteLoading,
    required TResult Function(_Favourite value) favourite,
  }) {
    return favourite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_Searched value)? searched,
    TResult? Function(_FavouriteLoading value)? favouriteLoading,
    TResult? Function(_Favourite value)? favourite,
  }) {
    return favourite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Searching value)? searching,
    TResult Function(_Searched value)? searched,
    TResult Function(_FavouriteLoading value)? favouriteLoading,
    TResult Function(_Favourite value)? favourite,
    required TResult orElse(),
  }) {
    if (favourite != null) {
      return favourite(this);
    }
    return orElse();
  }
}

abstract class _Favourite implements PostsState {
  const factory _Favourite(final List<Post> posts) = _$FavouriteImpl;

  List<Post> get posts;
  @JsonKey(ignore: true)
  _$$FavouriteImplCopyWith<_$FavouriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
