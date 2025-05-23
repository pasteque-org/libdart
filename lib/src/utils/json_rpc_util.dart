import 'dart:convert';

import 'package:archethic_lib_dart/src/model/exception/archethic_json_rpc_exception.dart';

/// A mixin providing utility methods for creating and parsing JSON-RPC 2.0 requests and responses.
///
/// This mixin can be used by classes that need to interact with JSON-RPC services.
mixin JsonRPCUtil {
  /// Creates a JSON-RPC 2.0 request string.
  ///
  /// - [method]: The name of the RPC method to be invoked.
  /// - [params]: The parameters to be passed to the method. This can be a structured value (e.g., Map or List) or a primitive.
  /// - [id]: An identifier established by the client. Defaults to 1.
  ///
  /// Returns a JSON string representing the JSON-RPC request.
  String setJsonRPCRequest(
    final String method,
    final Object params, {
    final int id = 1,
  }) {
    return json.encode({
      'jsonrpc': '2.0',
      'method': method,
      'params': params,
      'id': id,
    });
  }

  /// Parses a JSON-RPC 2.0 response string and extracts the result.
  ///
  /// - [body]: The JSON string representing the JSON-RPC response.
  ///
  /// Returns the 'result' field from the JSON-RPC response.
  /// Throws an [ArchethicJsonRPCException] if the response contains an 'error' field.
  /// The fields `code`, `message`, and `data` from the error object are used to populate the exception.
  /// If any of these fields are null in the error object, it attempts to use them again (which seems redundant but matches original code).
  dynamic getJsonRPCResult(final String body) {
    final jsonResponse = json.decode(body);
    if (jsonResponse.containsKey('error')) {
      throw ArchethicJsonRPCException(
        code: jsonResponse['error']['code'] ?? jsonResponse['error']['code'],
        message:
            jsonResponse['error']['message'] ??
            jsonResponse['error']['message'],
        data: jsonResponse['error']['data'] ?? jsonResponse['error']['data'],
      );
    }
    return jsonResponse['result'];
  }

  /// Parses a JSON-RPC 2.0 response string and extracts the result as a string.
  ///
  /// - [body]: The JSON string representing the JSON-RPC response.
  ///
  /// Returns the string representation of the 'result' field from the JSON-RPC response.
  /// Throws an [ArchethicJsonRPCException] if the response contains an 'error' field.
  /// The handling of the error object is the same as in [getJsonRPCResult].
  String getJsonRPCResultString(final String body) {
    final jsonResponse = json.decode(body) as Map<String, dynamic>;
    if (jsonResponse.containsKey('error')) {
      throw ArchethicJsonRPCException(
        code: jsonResponse['error']['code'] ?? jsonResponse['error']['code'],
        message:
            jsonResponse['error']['message'] ??
            jsonResponse['error']['message'],
        data: jsonResponse['error']['data'] ?? jsonResponse['error']['data'],
      );
    }

    return jsonResponse['result'].toString();
  }
}
