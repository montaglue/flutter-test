// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.77.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import "bridge_definitions.dart";
import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';
import 'bridge_generated.io.dart'
    if (dart.library.html) 'bridge_generated.web.dart';

class BridgeImpl implements Bridge {
  final BridgePlatform _platform;
  factory BridgeImpl(ExternalLibrary dylib) =>
      BridgeImpl.raw(BridgePlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory BridgeImpl.wasm(FutureOr<WasmModule> module) =>
      BridgeImpl(module as ExternalLibrary);
  BridgeImpl.raw(this._platform);
  Stream<String> prepareViewmodelUpdateStream({dynamic hint}) {
    return _platform.executeStream(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_prepare_viewmodel_update_stream(port_),
      parseSuccessData: _wire2api_String,
      constMeta: kPrepareViewmodelUpdateStreamConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kPrepareViewmodelUpdateStreamConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "prepare_viewmodel_update_stream",
        argNames: [],
      );

  Stream<ViewUpdate> prepareViewUpdateStream({dynamic hint}) {
    return _platform.executeStream(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_prepare_view_update_stream(port_),
      parseSuccessData: _wire2api_view_update,
      constMeta: kPrepareViewUpdateStreamConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kPrepareViewUpdateStreamConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "prepare_view_update_stream",
        argNames: [],
      );

  void prepareChannels({dynamic hint}) {
    return _platform.executeSync(FlutterRustBridgeSyncTask(
      callFfi: () => _platform.inner.wire_prepare_channels(),
      parseSuccessData: _wire2api_unit,
      constMeta: kPrepareChannelsConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kPrepareChannelsConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "prepare_channels",
        argNames: [],
      );

  Future<void> startRustLogic({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_start_rust_logic(port_),
      parseSuccessData: _wire2api_unit,
      constMeta: kStartRustLogicConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kStartRustLogicConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "start_rust_logic",
        argNames: [],
      );

  void sendUserAction(
      {required String taskAddress,
      required Serialized serialized,
      dynamic hint}) {
    var arg0 = _platform.api2wire_String(taskAddress);
    var arg1 = _platform.api2wire_box_autoadd_serialized(serialized);
    return _platform.executeSync(FlutterRustBridgeSyncTask(
      callFfi: () => _platform.inner.wire_send_user_action(arg0, arg1),
      parseSuccessData: _wire2api_unit,
      constMeta: kSendUserActionConstMeta,
      argValues: [taskAddress, serialized],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSendUserActionConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "send_user_action",
        argNames: ["taskAddress", "serialized"],
      );

  void cleanViewmodel({dynamic hint}) {
    return _platform.executeSync(FlutterRustBridgeSyncTask(
      callFfi: () => _platform.inner.wire_clean_viewmodel(),
      parseSuccessData: _wire2api_unit,
      constMeta: kCleanViewmodelConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kCleanViewmodelConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "clean_viewmodel",
        argNames: [],
      );

  Serialized? readViewmodel({required String itemAddress, dynamic hint}) {
    var arg0 = _platform.api2wire_String(itemAddress);
    return _platform.executeSync(FlutterRustBridgeSyncTask(
      callFfi: () => _platform.inner.wire_read_viewmodel(arg0),
      parseSuccessData: _wire2api_opt_box_autoadd_serialized,
      constMeta: kReadViewmodelConstMeta,
      argValues: [itemAddress],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kReadViewmodelConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "read_viewmodel",
        argNames: ["itemAddress"],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  Serialized _wire2api_box_autoadd_serialized(dynamic raw) {
    return _wire2api_serialized(raw);
  }

  Serialized? _wire2api_opt_box_autoadd_serialized(dynamic raw) {
    return raw == null ? null : _wire2api_box_autoadd_serialized(raw);
  }

  Serialized _wire2api_serialized(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return Serialized(
      bytes: _wire2api_uint_8_list(arr[0]),
      formula: _wire2api_String(arr[1]),
    );
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }

  void _wire2api_unit(dynamic raw) {
    return;
  }

  ViewUpdate _wire2api_view_update(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return ViewUpdate(
      displayAddress: _wire2api_String(arr[0]),
      serialized: _wire2api_serialized(arr[1]),
    );
  }
}

// Section: api2wire

@protected
int api2wire_u8(int raw) {
  return raw;
}

// Section: finalizer