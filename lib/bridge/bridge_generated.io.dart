// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.77.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import "bridge_definitions.dart";
import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';
import 'bridge_generated.dart';
export 'bridge_generated.dart';
import 'dart:ffi' as ffi;

class BridgePlatform extends FlutterRustBridgeBase<BridgeWire> {
  BridgePlatform(ffi.DynamicLibrary dylib) : super(BridgeWire(dylib));

// Section: api2wire

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<wire_Serialized> api2wire_box_autoadd_serialized(Serialized raw) {
    final ptr = inner.new_box_autoadd_serialized_0();
    _api_fill_to_wire_serialized(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }
// Section: finalizer

// Section: api_fill_to_wire

  void _api_fill_to_wire_box_autoadd_serialized(
      Serialized apiObj, ffi.Pointer<wire_Serialized> wireObj) {
    _api_fill_to_wire_serialized(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_serialized(
      Serialized apiObj, wire_Serialized wireObj) {
    wireObj.bytes = api2wire_uint_8_list(apiObj.bytes);
    wireObj.formula = api2wire_String(apiObj.formula);
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint

/// generated by flutter_rust_bridge
class BridgeWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  BridgeWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  BridgeWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  Object get_dart_object(
    int ptr,
  ) {
    return _get_dart_object(
      ptr,
    );
  }

  late final _get_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Handle Function(ffi.UintPtr)>>(
          'get_dart_object');
  late final _get_dart_object =
      _get_dart_objectPtr.asFunction<Object Function(int)>();

  void drop_dart_object(
    int ptr,
  ) {
    return _drop_dart_object(
      ptr,
    );
  }

  late final _drop_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>(
          'drop_dart_object');
  late final _drop_dart_object =
      _drop_dart_objectPtr.asFunction<void Function(int)>();

  int new_dart_opaque(
    Object handle,
  ) {
    return _new_dart_opaque(
      handle,
    );
  }

  late final _new_dart_opaquePtr =
      _lookup<ffi.NativeFunction<ffi.UintPtr Function(ffi.Handle)>>(
          'new_dart_opaque');
  late final _new_dart_opaque =
      _new_dart_opaquePtr.asFunction<int Function(Object)>();

  int init_frb_dart_api_dl(
    ffi.Pointer<ffi.Void> obj,
  ) {
    return _init_frb_dart_api_dl(
      obj,
    );
  }

  late final _init_frb_dart_api_dlPtr =
      _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>(
          'init_frb_dart_api_dl');
  late final _init_frb_dart_api_dl = _init_frb_dart_api_dlPtr
      .asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  void wire_prepare_viewmodel_update_stream(
    int port_,
  ) {
    return _wire_prepare_viewmodel_update_stream(
      port_,
    );
  }

  late final _wire_prepare_viewmodel_update_streamPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_prepare_viewmodel_update_stream');
  late final _wire_prepare_viewmodel_update_stream =
      _wire_prepare_viewmodel_update_streamPtr.asFunction<void Function(int)>();

  void wire_prepare_view_update_stream(
    int port_,
  ) {
    return _wire_prepare_view_update_stream(
      port_,
    );
  }

  late final _wire_prepare_view_update_streamPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_prepare_view_update_stream');
  late final _wire_prepare_view_update_stream =
      _wire_prepare_view_update_streamPtr.asFunction<void Function(int)>();

  WireSyncReturn wire_prepare_channels() {
    return _wire_prepare_channels();
  }

  late final _wire_prepare_channelsPtr =
      _lookup<ffi.NativeFunction<WireSyncReturn Function()>>(
          'wire_prepare_channels');
  late final _wire_prepare_channels =
      _wire_prepare_channelsPtr.asFunction<WireSyncReturn Function()>();

  void wire_start_rust_logic(
    int port_,
  ) {
    return _wire_start_rust_logic(
      port_,
    );
  }

  late final _wire_start_rust_logicPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_start_rust_logic');
  late final _wire_start_rust_logic =
      _wire_start_rust_logicPtr.asFunction<void Function(int)>();

  WireSyncReturn wire_send_user_action(
    ffi.Pointer<wire_uint_8_list> task_address,
    ffi.Pointer<wire_Serialized> serialized,
  ) {
    return _wire_send_user_action(
      task_address,
      serialized,
    );
  }

  late final _wire_send_user_actionPtr = _lookup<
      ffi.NativeFunction<
          WireSyncReturn Function(ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_Serialized>)>>('wire_send_user_action');
  late final _wire_send_user_action = _wire_send_user_actionPtr.asFunction<
      WireSyncReturn Function(
          ffi.Pointer<wire_uint_8_list>, ffi.Pointer<wire_Serialized>)>();

  WireSyncReturn wire_clean_viewmodel() {
    return _wire_clean_viewmodel();
  }

  late final _wire_clean_viewmodelPtr =
      _lookup<ffi.NativeFunction<WireSyncReturn Function()>>(
          'wire_clean_viewmodel');
  late final _wire_clean_viewmodel =
      _wire_clean_viewmodelPtr.asFunction<WireSyncReturn Function()>();

  WireSyncReturn wire_read_viewmodel(
    ffi.Pointer<wire_uint_8_list> item_address,
  ) {
    return _wire_read_viewmodel(
      item_address,
    );
  }

  late final _wire_read_viewmodelPtr = _lookup<
      ffi.NativeFunction<
          WireSyncReturn Function(
              ffi.Pointer<wire_uint_8_list>)>>('wire_read_viewmodel');
  late final _wire_read_viewmodel = _wire_read_viewmodelPtr
      .asFunction<WireSyncReturn Function(ffi.Pointer<wire_uint_8_list>)>();

  ffi.Pointer<wire_Serialized> new_box_autoadd_serialized_0() {
    return _new_box_autoadd_serialized_0();
  }

  late final _new_box_autoadd_serialized_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_Serialized> Function()>>(
          'new_box_autoadd_serialized_0');
  late final _new_box_autoadd_serialized_0 = _new_box_autoadd_serialized_0Ptr
      .asFunction<ffi.Pointer<wire_Serialized> Function()>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  void free_WireSyncReturn(
    WireSyncReturn ptr,
  ) {
    return _free_WireSyncReturn(
      ptr,
    );
  }

  late final _free_WireSyncReturnPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturn)>>(
          'free_WireSyncReturn');
  late final _free_WireSyncReturn =
      _free_WireSyncReturnPtr.asFunction<void Function(WireSyncReturn)>();
}

final class _Dart_Handle extends ffi.Opaque {}

final class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

final class wire_Serialized extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> bytes;

  external ffi.Pointer<wire_uint_8_list> formula;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<
        ffi.Bool Function(DartPort port_id, ffi.Pointer<ffi.Void> message)>>;
typedef DartPort = ffi.Int64;