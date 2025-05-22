// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() todoRetrieved,
    required TResult Function(TodoEntity todo) todoAdded,
    required TResult Function(TodoEntity todo) todoUpdated,
    required TResult Function(String id) todoDeleted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? todoRetrieved,
    TResult? Function(TodoEntity todo)? todoAdded,
    TResult? Function(TodoEntity todo)? todoUpdated,
    TResult? Function(String id)? todoDeleted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? todoRetrieved,
    TResult Function(TodoEntity todo)? todoAdded,
    TResult Function(TodoEntity todo)? todoUpdated,
    TResult Function(String id)? todoDeleted,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TodoEvent value) $default, {
    required TResult Function(_TodoRetrieved value) todoRetrieved,
    required TResult Function(_TodoAdded value) todoAdded,
    required TResult Function(_TodoUpdated value) todoUpdated,
    required TResult Function(_TodoDeleted value) todoDeleted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TodoEvent value)? $default, {
    TResult? Function(_TodoRetrieved value)? todoRetrieved,
    TResult? Function(_TodoAdded value)? todoAdded,
    TResult? Function(_TodoUpdated value)? todoUpdated,
    TResult? Function(_TodoDeleted value)? todoDeleted,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TodoEvent value)? $default, {
    TResult Function(_TodoRetrieved value)? todoRetrieved,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoUpdated value)? todoUpdated,
    TResult Function(_TodoDeleted value)? todoDeleted,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent>
    implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TodoEventImplCopyWith<$Res> {
  factory _$$TodoEventImplCopyWith(
    _$TodoEventImpl value,
    $Res Function(_$TodoEventImpl) then,
  ) = __$$TodoEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoEventImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TodoEventImpl>
    implements _$$TodoEventImplCopyWith<$Res> {
  __$$TodoEventImplCopyWithImpl(
    _$TodoEventImpl _value,
    $Res Function(_$TodoEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TodoEventImpl implements _TodoEvent {
  const _$TodoEventImpl();

  @override
  String toString() {
    return 'TodoEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() todoRetrieved,
    required TResult Function(TodoEntity todo) todoAdded,
    required TResult Function(TodoEntity todo) todoUpdated,
    required TResult Function(String id) todoDeleted,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? todoRetrieved,
    TResult? Function(TodoEntity todo)? todoAdded,
    TResult? Function(TodoEntity todo)? todoUpdated,
    TResult? Function(String id)? todoDeleted,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? todoRetrieved,
    TResult Function(TodoEntity todo)? todoAdded,
    TResult Function(TodoEntity todo)? todoUpdated,
    TResult Function(String id)? todoDeleted,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TodoEvent value) $default, {
    required TResult Function(_TodoRetrieved value) todoRetrieved,
    required TResult Function(_TodoAdded value) todoAdded,
    required TResult Function(_TodoUpdated value) todoUpdated,
    required TResult Function(_TodoDeleted value) todoDeleted,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TodoEvent value)? $default, {
    TResult? Function(_TodoRetrieved value)? todoRetrieved,
    TResult? Function(_TodoAdded value)? todoAdded,
    TResult? Function(_TodoUpdated value)? todoUpdated,
    TResult? Function(_TodoDeleted value)? todoDeleted,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TodoEvent value)? $default, {
    TResult Function(_TodoRetrieved value)? todoRetrieved,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoUpdated value)? todoUpdated,
    TResult Function(_TodoDeleted value)? todoDeleted,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _TodoEvent implements TodoEvent {
  const factory _TodoEvent() = _$TodoEventImpl;
}

/// @nodoc
abstract class _$$TodoRetrievedImplCopyWith<$Res> {
  factory _$$TodoRetrievedImplCopyWith(
    _$TodoRetrievedImpl value,
    $Res Function(_$TodoRetrievedImpl) then,
  ) = __$$TodoRetrievedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoRetrievedImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TodoRetrievedImpl>
    implements _$$TodoRetrievedImplCopyWith<$Res> {
  __$$TodoRetrievedImplCopyWithImpl(
    _$TodoRetrievedImpl _value,
    $Res Function(_$TodoRetrievedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TodoRetrievedImpl implements _TodoRetrieved {
  const _$TodoRetrievedImpl();

  @override
  String toString() {
    return 'TodoEvent.todoRetrieved()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoRetrievedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() todoRetrieved,
    required TResult Function(TodoEntity todo) todoAdded,
    required TResult Function(TodoEntity todo) todoUpdated,
    required TResult Function(String id) todoDeleted,
  }) {
    return todoRetrieved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? todoRetrieved,
    TResult? Function(TodoEntity todo)? todoAdded,
    TResult? Function(TodoEntity todo)? todoUpdated,
    TResult? Function(String id)? todoDeleted,
  }) {
    return todoRetrieved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? todoRetrieved,
    TResult Function(TodoEntity todo)? todoAdded,
    TResult Function(TodoEntity todo)? todoUpdated,
    TResult Function(String id)? todoDeleted,
    required TResult orElse(),
  }) {
    if (todoRetrieved != null) {
      return todoRetrieved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TodoEvent value) $default, {
    required TResult Function(_TodoRetrieved value) todoRetrieved,
    required TResult Function(_TodoAdded value) todoAdded,
    required TResult Function(_TodoUpdated value) todoUpdated,
    required TResult Function(_TodoDeleted value) todoDeleted,
  }) {
    return todoRetrieved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TodoEvent value)? $default, {
    TResult? Function(_TodoRetrieved value)? todoRetrieved,
    TResult? Function(_TodoAdded value)? todoAdded,
    TResult? Function(_TodoUpdated value)? todoUpdated,
    TResult? Function(_TodoDeleted value)? todoDeleted,
  }) {
    return todoRetrieved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TodoEvent value)? $default, {
    TResult Function(_TodoRetrieved value)? todoRetrieved,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoUpdated value)? todoUpdated,
    TResult Function(_TodoDeleted value)? todoDeleted,
    required TResult orElse(),
  }) {
    if (todoRetrieved != null) {
      return todoRetrieved(this);
    }
    return orElse();
  }
}

abstract class _TodoRetrieved implements TodoEvent {
  const factory _TodoRetrieved() = _$TodoRetrievedImpl;
}

/// @nodoc
abstract class _$$TodoAddedImplCopyWith<$Res> {
  factory _$$TodoAddedImplCopyWith(
    _$TodoAddedImpl value,
    $Res Function(_$TodoAddedImpl) then,
  ) = __$$TodoAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TodoEntity todo});

  $TodoEntityCopyWith<$Res> get todo;
}

/// @nodoc
class __$$TodoAddedImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TodoAddedImpl>
    implements _$$TodoAddedImplCopyWith<$Res> {
  __$$TodoAddedImplCopyWithImpl(
    _$TodoAddedImpl _value,
    $Res Function(_$TodoAddedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? todo = null}) {
    return _then(
      _$TodoAddedImpl(
        null == todo
            ? _value.todo
            : todo // ignore: cast_nullable_to_non_nullable
                as TodoEntity,
      ),
    );
  }

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TodoEntityCopyWith<$Res> get todo {
    return $TodoEntityCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$TodoAddedImpl implements _TodoAdded {
  const _$TodoAddedImpl(this.todo);

  @override
  final TodoEntity todo;

  @override
  String toString() {
    return 'TodoEvent.todoAdded(todo: $todo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoAddedImpl &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoAddedImplCopyWith<_$TodoAddedImpl> get copyWith =>
      __$$TodoAddedImplCopyWithImpl<_$TodoAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() todoRetrieved,
    required TResult Function(TodoEntity todo) todoAdded,
    required TResult Function(TodoEntity todo) todoUpdated,
    required TResult Function(String id) todoDeleted,
  }) {
    return todoAdded(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? todoRetrieved,
    TResult? Function(TodoEntity todo)? todoAdded,
    TResult? Function(TodoEntity todo)? todoUpdated,
    TResult? Function(String id)? todoDeleted,
  }) {
    return todoAdded?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? todoRetrieved,
    TResult Function(TodoEntity todo)? todoAdded,
    TResult Function(TodoEntity todo)? todoUpdated,
    TResult Function(String id)? todoDeleted,
    required TResult orElse(),
  }) {
    if (todoAdded != null) {
      return todoAdded(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TodoEvent value) $default, {
    required TResult Function(_TodoRetrieved value) todoRetrieved,
    required TResult Function(_TodoAdded value) todoAdded,
    required TResult Function(_TodoUpdated value) todoUpdated,
    required TResult Function(_TodoDeleted value) todoDeleted,
  }) {
    return todoAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TodoEvent value)? $default, {
    TResult? Function(_TodoRetrieved value)? todoRetrieved,
    TResult? Function(_TodoAdded value)? todoAdded,
    TResult? Function(_TodoUpdated value)? todoUpdated,
    TResult? Function(_TodoDeleted value)? todoDeleted,
  }) {
    return todoAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TodoEvent value)? $default, {
    TResult Function(_TodoRetrieved value)? todoRetrieved,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoUpdated value)? todoUpdated,
    TResult Function(_TodoDeleted value)? todoDeleted,
    required TResult orElse(),
  }) {
    if (todoAdded != null) {
      return todoAdded(this);
    }
    return orElse();
  }
}

abstract class _TodoAdded implements TodoEvent {
  const factory _TodoAdded(final TodoEntity todo) = _$TodoAddedImpl;

  TodoEntity get todo;

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoAddedImplCopyWith<_$TodoAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodoUpdatedImplCopyWith<$Res> {
  factory _$$TodoUpdatedImplCopyWith(
    _$TodoUpdatedImpl value,
    $Res Function(_$TodoUpdatedImpl) then,
  ) = __$$TodoUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TodoEntity todo});

  $TodoEntityCopyWith<$Res> get todo;
}

/// @nodoc
class __$$TodoUpdatedImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TodoUpdatedImpl>
    implements _$$TodoUpdatedImplCopyWith<$Res> {
  __$$TodoUpdatedImplCopyWithImpl(
    _$TodoUpdatedImpl _value,
    $Res Function(_$TodoUpdatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? todo = null}) {
    return _then(
      _$TodoUpdatedImpl(
        null == todo
            ? _value.todo
            : todo // ignore: cast_nullable_to_non_nullable
                as TodoEntity,
      ),
    );
  }

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TodoEntityCopyWith<$Res> get todo {
    return $TodoEntityCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$TodoUpdatedImpl implements _TodoUpdated {
  const _$TodoUpdatedImpl(this.todo);

  @override
  final TodoEntity todo;

  @override
  String toString() {
    return 'TodoEvent.todoUpdated(todo: $todo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoUpdatedImpl &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoUpdatedImplCopyWith<_$TodoUpdatedImpl> get copyWith =>
      __$$TodoUpdatedImplCopyWithImpl<_$TodoUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() todoRetrieved,
    required TResult Function(TodoEntity todo) todoAdded,
    required TResult Function(TodoEntity todo) todoUpdated,
    required TResult Function(String id) todoDeleted,
  }) {
    return todoUpdated(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? todoRetrieved,
    TResult? Function(TodoEntity todo)? todoAdded,
    TResult? Function(TodoEntity todo)? todoUpdated,
    TResult? Function(String id)? todoDeleted,
  }) {
    return todoUpdated?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? todoRetrieved,
    TResult Function(TodoEntity todo)? todoAdded,
    TResult Function(TodoEntity todo)? todoUpdated,
    TResult Function(String id)? todoDeleted,
    required TResult orElse(),
  }) {
    if (todoUpdated != null) {
      return todoUpdated(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TodoEvent value) $default, {
    required TResult Function(_TodoRetrieved value) todoRetrieved,
    required TResult Function(_TodoAdded value) todoAdded,
    required TResult Function(_TodoUpdated value) todoUpdated,
    required TResult Function(_TodoDeleted value) todoDeleted,
  }) {
    return todoUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TodoEvent value)? $default, {
    TResult? Function(_TodoRetrieved value)? todoRetrieved,
    TResult? Function(_TodoAdded value)? todoAdded,
    TResult? Function(_TodoUpdated value)? todoUpdated,
    TResult? Function(_TodoDeleted value)? todoDeleted,
  }) {
    return todoUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TodoEvent value)? $default, {
    TResult Function(_TodoRetrieved value)? todoRetrieved,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoUpdated value)? todoUpdated,
    TResult Function(_TodoDeleted value)? todoDeleted,
    required TResult orElse(),
  }) {
    if (todoUpdated != null) {
      return todoUpdated(this);
    }
    return orElse();
  }
}

abstract class _TodoUpdated implements TodoEvent {
  const factory _TodoUpdated(final TodoEntity todo) = _$TodoUpdatedImpl;

  TodoEntity get todo;

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoUpdatedImplCopyWith<_$TodoUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodoDeletedImplCopyWith<$Res> {
  factory _$$TodoDeletedImplCopyWith(
    _$TodoDeletedImpl value,
    $Res Function(_$TodoDeletedImpl) then,
  ) = __$$TodoDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$TodoDeletedImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TodoDeletedImpl>
    implements _$$TodoDeletedImplCopyWith<$Res> {
  __$$TodoDeletedImplCopyWithImpl(
    _$TodoDeletedImpl _value,
    $Res Function(_$TodoDeletedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$TodoDeletedImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$TodoDeletedImpl implements _TodoDeleted {
  const _$TodoDeletedImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'TodoEvent.todoDeleted(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoDeletedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoDeletedImplCopyWith<_$TodoDeletedImpl> get copyWith =>
      __$$TodoDeletedImplCopyWithImpl<_$TodoDeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() todoRetrieved,
    required TResult Function(TodoEntity todo) todoAdded,
    required TResult Function(TodoEntity todo) todoUpdated,
    required TResult Function(String id) todoDeleted,
  }) {
    return todoDeleted(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? todoRetrieved,
    TResult? Function(TodoEntity todo)? todoAdded,
    TResult? Function(TodoEntity todo)? todoUpdated,
    TResult? Function(String id)? todoDeleted,
  }) {
    return todoDeleted?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? todoRetrieved,
    TResult Function(TodoEntity todo)? todoAdded,
    TResult Function(TodoEntity todo)? todoUpdated,
    TResult Function(String id)? todoDeleted,
    required TResult orElse(),
  }) {
    if (todoDeleted != null) {
      return todoDeleted(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TodoEvent value) $default, {
    required TResult Function(_TodoRetrieved value) todoRetrieved,
    required TResult Function(_TodoAdded value) todoAdded,
    required TResult Function(_TodoUpdated value) todoUpdated,
    required TResult Function(_TodoDeleted value) todoDeleted,
  }) {
    return todoDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TodoEvent value)? $default, {
    TResult? Function(_TodoRetrieved value)? todoRetrieved,
    TResult? Function(_TodoAdded value)? todoAdded,
    TResult? Function(_TodoUpdated value)? todoUpdated,
    TResult? Function(_TodoDeleted value)? todoDeleted,
  }) {
    return todoDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TodoEvent value)? $default, {
    TResult Function(_TodoRetrieved value)? todoRetrieved,
    TResult Function(_TodoAdded value)? todoAdded,
    TResult Function(_TodoUpdated value)? todoUpdated,
    TResult Function(_TodoDeleted value)? todoDeleted,
    required TResult orElse(),
  }) {
    if (todoDeleted != null) {
      return todoDeleted(this);
    }
    return orElse();
  }
}

abstract class _TodoDeleted implements TodoEvent {
  const factory _TodoDeleted(final String id) = _$TodoDeletedImpl;

  String get id;

  /// Create a copy of TodoEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoDeletedImplCopyWith<_$TodoDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoState {
  bool get addTodoLoading => throw _privateConstructorUsedError;
  bool get getTodoLoading => throw _privateConstructorUsedError;
  bool get updateTodoLoading => throw _privateConstructorUsedError;
  bool get deleteTodoLoading => throw _privateConstructorUsedError;
  List<TodoEntity> get todos => throw _privateConstructorUsedError;

  /// Create a copy of TodoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoStateCopyWith<TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
  @useResult
  $Res call({
    bool addTodoLoading,
    bool getTodoLoading,
    bool updateTodoLoading,
    bool deleteTodoLoading,
    List<TodoEntity> todos,
  });
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addTodoLoading = null,
    Object? getTodoLoading = null,
    Object? updateTodoLoading = null,
    Object? deleteTodoLoading = null,
    Object? todos = null,
  }) {
    return _then(
      _value.copyWith(
            addTodoLoading:
                null == addTodoLoading
                    ? _value.addTodoLoading
                    : addTodoLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            getTodoLoading:
                null == getTodoLoading
                    ? _value.getTodoLoading
                    : getTodoLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            updateTodoLoading:
                null == updateTodoLoading
                    ? _value.updateTodoLoading
                    : updateTodoLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            deleteTodoLoading:
                null == deleteTodoLoading
                    ? _value.deleteTodoLoading
                    : deleteTodoLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            todos:
                null == todos
                    ? _value.todos
                    : todos // ignore: cast_nullable_to_non_nullable
                        as List<TodoEntity>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TodoStateImplCopyWith<$Res>
    implements $TodoStateCopyWith<$Res> {
  factory _$$TodoStateImplCopyWith(
    _$TodoStateImpl value,
    $Res Function(_$TodoStateImpl) then,
  ) = __$$TodoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool addTodoLoading,
    bool getTodoLoading,
    bool updateTodoLoading,
    bool deleteTodoLoading,
    List<TodoEntity> todos,
  });
}

/// @nodoc
class __$$TodoStateImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoStateImpl>
    implements _$$TodoStateImplCopyWith<$Res> {
  __$$TodoStateImplCopyWithImpl(
    _$TodoStateImpl _value,
    $Res Function(_$TodoStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TodoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addTodoLoading = null,
    Object? getTodoLoading = null,
    Object? updateTodoLoading = null,
    Object? deleteTodoLoading = null,
    Object? todos = null,
  }) {
    return _then(
      _$TodoStateImpl(
        addTodoLoading:
            null == addTodoLoading
                ? _value.addTodoLoading
                : addTodoLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        getTodoLoading:
            null == getTodoLoading
                ? _value.getTodoLoading
                : getTodoLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        updateTodoLoading:
            null == updateTodoLoading
                ? _value.updateTodoLoading
                : updateTodoLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        deleteTodoLoading:
            null == deleteTodoLoading
                ? _value.deleteTodoLoading
                : deleteTodoLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        todos:
            null == todos
                ? _value._todos
                : todos // ignore: cast_nullable_to_non_nullable
                    as List<TodoEntity>,
      ),
    );
  }
}

/// @nodoc

class _$TodoStateImpl extends _TodoState {
  const _$TodoStateImpl({
    this.addTodoLoading = false,
    this.getTodoLoading = false,
    this.updateTodoLoading = false,
    this.deleteTodoLoading = false,
    final List<TodoEntity> todos = const [],
  }) : _todos = todos,
       super._();

  @override
  @JsonKey()
  final bool addTodoLoading;
  @override
  @JsonKey()
  final bool getTodoLoading;
  @override
  @JsonKey()
  final bool updateTodoLoading;
  @override
  @JsonKey()
  final bool deleteTodoLoading;
  final List<TodoEntity> _todos;
  @override
  @JsonKey()
  List<TodoEntity> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodoState(addTodoLoading: $addTodoLoading, getTodoLoading: $getTodoLoading, updateTodoLoading: $updateTodoLoading, deleteTodoLoading: $deleteTodoLoading, todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoStateImpl &&
            (identical(other.addTodoLoading, addTodoLoading) ||
                other.addTodoLoading == addTodoLoading) &&
            (identical(other.getTodoLoading, getTodoLoading) ||
                other.getTodoLoading == getTodoLoading) &&
            (identical(other.updateTodoLoading, updateTodoLoading) ||
                other.updateTodoLoading == updateTodoLoading) &&
            (identical(other.deleteTodoLoading, deleteTodoLoading) ||
                other.deleteTodoLoading == deleteTodoLoading) &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    addTodoLoading,
    getTodoLoading,
    updateTodoLoading,
    deleteTodoLoading,
    const DeepCollectionEquality().hash(_todos),
  );

  /// Create a copy of TodoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoStateImplCopyWith<_$TodoStateImpl> get copyWith =>
      __$$TodoStateImplCopyWithImpl<_$TodoStateImpl>(this, _$identity);
}

abstract class _TodoState extends TodoState {
  const factory _TodoState({
    final bool addTodoLoading,
    final bool getTodoLoading,
    final bool updateTodoLoading,
    final bool deleteTodoLoading,
    final List<TodoEntity> todos,
  }) = _$TodoStateImpl;
  const _TodoState._() : super._();

  @override
  bool get addTodoLoading;
  @override
  bool get getTodoLoading;
  @override
  bool get updateTodoLoading;
  @override
  bool get deleteTodoLoading;
  @override
  List<TodoEntity> get todos;

  /// Create a copy of TodoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoStateImplCopyWith<_$TodoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
