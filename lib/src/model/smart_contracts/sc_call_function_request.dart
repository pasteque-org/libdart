import 'package:archethic_lib_dart/src/model/smart_contracts/sc_call_function_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sc_call_function_request.freezed.dart';
part 'sc_call_function_request.g.dart';

/// Represents a JSON-RPC request object tailored for calling a smart contract function.
///
/// This class structures the request according to JSON-RPC 2.0 specifications,
/// including the JSON-RPC version, method name, request ID, and the specific
/// parameters required for the smart contract function call ([SCCallFunctionParams]).
@freezed
abstract class SCCallFunctionRequest with _$SCCallFunctionRequest {
  /// Creates an instance of [SCCallFunctionRequest].
  ///
  /// - [jsonrpc]: The JSON-RPC version string. Defaults to "2.0".
  /// - [method]: The RPC method to be invoked (e.g., "ae_callSmartContractFunction").
  /// - [id]: An identifier established by the client for correlating requests and responses. Defaults to 1.
  /// - [params]: The parameters for the smart contract function call, encapsulated in an [SCCallFunctionParams] object.
  const factory SCCallFunctionRequest({
    /// The name of the JSON-RPC method to be invoked.
    required final String method,

    /// The parameters specific to the smart contract function call.
    required final SCCallFunctionParams params,

    /// The JSON-RPC version. Typically "2.0".
    @Default('2.0') final String jsonrpc,

    /// A client-generated identifier for the request.
    /// The server should include this ID in its response.
    @Default(1) final int id,
  }) = _SCCallFunctionRequest;

  /// Creates an [SCCallFunctionRequest] instance from a JSON map.
  ///
  /// This factory uses the `freezed` generated `_$SCCallFunctionRequestFromJson` function
  /// to deserialize the JSON data.
  factory SCCallFunctionRequest.fromJson(final Map<String, dynamic> json) =>
      _$SCCallFunctionRequestFromJson(json);
}
